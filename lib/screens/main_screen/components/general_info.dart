import 'package:astro_weather_2/constants.dart';
import 'package:astro_weather_2/cubit/weather_cubit.dart';
import 'package:astro_weather_2/models/forecast/forecast.dart';
import 'package:flutter/material.dart';

class GeneralInfo extends StatelessWidget {
  final WeatherState state;

  const GeneralInfo({required this.state});

  @override
  Widget build(BuildContext context) {
    Forecast forecast = state.forecast!;
    String speed = state.forecast!.units == 'metric'
        ? Constants.speedMetric
        : Constants.speedImperial;
    String temp = state.forecast!.units == 'metric'
        ? Constants.degreeCelsius
        : Constants.degreeFahrenheit;
    String shouldIncludeGust = forecast.wind.gust != null
        ? 'Gust: ${forecast.wind.gust!.toStringAsFixed(2)} knots'
        : '';
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Coordinates:\nLon: ${forecast.coord.lon.toStringAsFixed(2)}\', Lat: ${forecast.coord.lat.toStringAsFixed(2)}\'\n',
              textAlign: TextAlign.center,
            ),
            Text(
              'Wind:\nSpeed: ${forecast.wind.speed.toStringAsFixed(2)}$speed, Degrees: ${forecast.wind.deg}°,\n $shouldIncludeGust',
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Column(
          children: [
            Text(
              'Description:\n\n${forecast.description.description}',
              textAlign: TextAlign.center,
            ),
            Image.network(
              'http://openweathermap.org/img/w/${forecast.description.icon}.png',
              fit: BoxFit.fill,
              height: Constants.imageSize,
              width: Constants.imageSize,
            ),
            Text(forecast.description.main),
          ],
        ),
        Text(
          'Temp:\n${forecast.weather.temp.toStringAsFixed(2)}$temp',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
