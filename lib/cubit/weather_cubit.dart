import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '/config/exceptions/exceptions.dart';
import '/models/forecast/forecast.dart';
import '/repository/weather_repository.dart';

part 'weather_state.dart';
part 'weather_cubit.freezed.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepository _weatherRepository;
  late Timer _fetching;
  late Timer _restoring;

  WeatherCubit(this._weatherRepository)
      : super(WeatherState.init(name: 'Łódź'));

  void changeCityAndUnit({
    required String name,
    required String units,
  }) {
    _fetching.cancel();
    startFetching(name: name, units: units);
    emit(state.copyWith(
      name: name,
      unit: units,
      validator: const DataChange.dataChange(),
      isFavorite: false,
    ));
  }

  void changedPickedFavorite({
    required Forecast forecast,
  }) {
    emit(state.copyWith(
      name: forecast.name,
      unit: forecast.units,
      forecast: forecast,
      validator: const DataChange.dataChange(),
      isFavorite: true,
    ));
    _fetching.cancel();
    startFetching(name: forecast.name, units: forecast.units);
  }

  Future<void> isForecastStoredLocally() async {
    final result = await _weatherRepository.loadLastForecast();
    result.fold(
      (fail) {
        startFetching(name: state.name, units: state.unit);
        emit(
          state.copyWith(
            validator: fail,
          ),
        );
      },
      (success) {
        startFetching(name: success.name, units: success.units);
        emit(
          state.copyWith(
            isLoading: false,
            name: success.name,
            forecast: success,
            unit: success.units,
          ),
        );
      },
    );
  }

  Future<bool> _checkConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      } else
        throw SocketException;
    } on SocketException catch (_) {
      return false;
    }
  }

  Future<void> startFetching({
    required String name,
    required String units,
  }) async {
    final bool isConnected = await _checkConnection();
    if (!isConnected) {
      waitForConnection();
      emit(
        state.copyWith(validator: const InternetException.noConnection()),
      );
    }
    _fetching = Timer.periodic(
      Duration(seconds: 6),
      (timer) async {
        final bool isConnected = await _checkConnection();
        if (!isConnected) {
          waitForConnection();
          emit(
            state.copyWith(validator: const InternetException.noConnection()),
          );
          timer.cancel();
        }
        final result = await _weatherRepository.requestCurrentForecast(
          name: name,
          unit: units,
        );
        result.fold(
          (fail) => emit(state.copyWith(
            isLoading: false,
            validator: fail,
          )),
          (success) => emit(state.copyWith(
            forecast: success,
            isLoading: false,
            name: name,
          )),
        );
      },
    );
  }

  Future<void> waitForConnection() async {
    _restoring = Timer.periodic(
      Duration(seconds: 5),
      (timer) async {
        final bool isConnected = await _checkConnection();
        if (isConnected) {
          timer.cancel();
          startFetching(name: state.name, units: state.unit);
          emit(
            state.copyWith(
                validator: const InternetException.restoredConnection()),
          );
        }
      },
    );
  }

  void addFavoriteForecast() {
    emit(state.copyWith(isFavorite: true));
    _weatherRepository.addFavoriteForecast(state.forecast!);
  }

  void removeFavoriteForecast() {
    emit(state.copyWith(isFavorite: false));
    _weatherRepository.removeFavoriteForecast(state.forecast!);
  }

  Map<String, Forecast> getFavoritesMap() => _weatherRepository.getFavoritesMap;

  void closeTimers() {
    if (_fetching.isActive) _fetching.cancel();
    if (_fetching.isActive) _restoring.cancel();
    Hive.close();
  }

  void clearErrorState() {
    emit(state.copyWith(validator: const ValueIsValid.valueIsValid()));
  }
}
