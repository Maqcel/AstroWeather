import 'package:astro_weather_2/constants.dart';
import 'package:astro_weather_2/cubit/weather_cubit.dart';
import 'package:astro_weather_2/models/forecast/forecast.dart';
import 'package:flutter/material.dart';

class AdditionalInfo extends StatelessWidget {
  final WeatherState state;

  const AdditionalInfo({required this.state});

  @override
  Widget build(BuildContext context) {
    Forecast? forecast = state.forecast;
    return forecast != null
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Temperature feels like:\n${forecast.weather.feels_like}',
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Temperature min:\n${forecast.weather.temp_min}',
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Temperature max:\n${forecast.weather.temp_max}',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Text(
                'Pressure:\n${forecast.weather.pressure}',
                textAlign: TextAlign.center,
              ),
              Text(
                'Humidity:\n${forecast.weather.humidity}%',
                textAlign: TextAlign.center,
              ),
            ],
          )
        : Container(
            child: Text('implement db'),
          );
  }
}
