import 'package:flutter/material.dart';

import '/constants.dart';
import '/cubit/weather_cubit.dart';
import '/models/forecast/forecast.dart';

class AdditionalInfo extends StatelessWidget {
  final WeatherState state;

  const AdditionalInfo({required this.state});

  @override
  Widget build(BuildContext context) {
    Forecast forecast = state.forecast!;
    String temp = state.forecast!.units == 'metric'
        ? Constants.degreeCelsius
        : Constants.degreeFahrenheit;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Temperature feels like:\n${forecast.weather.feels_like.toStringAsFixed(2)}$temp',
          textAlign: TextAlign.center,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Temperature min:\n${forecast.weather.temp_min.toStringAsFixed(2)}$temp',
              textAlign: TextAlign.center,
            ),
            Text(
              'Temperature max:\n${forecast.weather.temp_max.toStringAsFixed(2)}$temp',
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Text(
          'Pressure:\n${forecast.weather.pressure}${Constants.pressure}',
          textAlign: TextAlign.center,
        ),
        Text(
          'Humidity:\n${forecast.weather.humidity}%',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
