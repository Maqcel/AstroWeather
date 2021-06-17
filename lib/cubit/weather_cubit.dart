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

  WeatherCubit(this._weatherRepository) : super(WeatherState.init(name: ''));

  Future<bool> _checkConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('Connected');
        return true;
      }
    } on SocketException catch (_) {
      print('No connection');
      return false;
    }
    return false;
  }

  Future<void> startFetching() async {
    Timer.periodic(
      Duration(minutes: 1),
      (timer) async {
        final bool isConnected = await _checkConnection();
        if (!isConnected) {
          timer.cancel();
        }
        //! API CALL
      },
    );
  }
}
