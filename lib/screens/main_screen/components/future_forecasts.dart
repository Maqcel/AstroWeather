import 'package:flutter/material.dart';

import '/constants.dart';
import '/cubit/weather_cubit.dart';
import '/models/forecast/forecast.dart';

class FutureForecasts extends StatelessWidget {
  final WeatherState state;

  const FutureForecasts({required this.state});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        state.futureForecasts != null
            ? Expanded(
                flex: 1,
                child: ListView.builder(
                  itemCount: state.futureForecasts!.length,
                  itemBuilder: (context, index) {
                    Forecast forecast = state.futureForecasts!.elementAt(index);
                    String temp = state.forecast!.units == 'metric'
                        ? Constants.degreeCelsius
                        : Constants.degreeFahrenheit;
                    return Card(
                      child: ListTile(
                        leading: Image.network(
                          'http://openweathermap.org/img/w/${forecast.description.icon}.png',
                          fit: BoxFit.contain,
                          height: Constants.imageSize,
                          width: Constants.imageSize,
                        ),
                        title: Text(
                          forecast.timestamp.substring(
                            0,
                            forecast.timestamp.lastIndexOf(' '),
                          ),
                        ),
                        trailing: Text(
                            '${forecast.weather.temp.toStringAsFixed(2)}$temp'),
                      ),
                    );
                  },
                ),
              )
            : Text(
                'Future forecast required connection!\nWait for data!',
                textAlign: TextAlign.center,
              ),
      ],
    );
  }
}
