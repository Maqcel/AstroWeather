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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Coordinates:\nLon: ${forecast.coord.lon}\', Lat: ${forecast.coord.lat}\'\n',
              textAlign: TextAlign.center,
            ),
            Text(
              'Wind:\nSpeed: ${forecast.wind.speed}$speed, Degrees: ${forecast.wind.deg}°,\n Gust: ${forecast.wind.gust} knots',
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
          'Temp:\n${forecast.weather.temp}$temp',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
