import 'dart:async';
import 'dart:io';

import 'package:astro_weather_2/models/forecast/forecast.dart';
import 'package:astro_weather_2/repository/weather_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_state.dart';
part 'weather_cubit.freezed.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepository _weatherRepository;
  late Timer _fetching;
  late Timer _restoring;

  WeatherCubit(this._weatherRepository) : super(WeatherState.init(name: ''));

  Future<bool> _checkConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {
      return false;
    }
    return false;
  }

  Future<void> startFetching() async {
    final bool isConnected = await _checkConnection();
    if (!isConnected) {
      emit(state.copyWith(isConnected: false));
    }
    _fetching = Timer.periodic(
      Duration(seconds: 15),
      (timer) async {
        final bool isConnected = await _checkConnection();
        if (!isConnected) {
          emit(state.copyWith(isConnected: false));
          timer.cancel();
        }
        //! API CALL
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
          startFetching();
          emit(state.copyWith(isConnected: true));
        }
      },
    );
  }

  void closeTimers() {
    if (_fetching.isActive) _fetching.cancel();
    if (_fetching.isActive) _restoring.cancel();
  }
}
