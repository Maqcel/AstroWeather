import 'package:flutter/material.dart';

import '/constants.dart';
import '/cubit/weather_cubit.dart';

enum ChosenUnits {
  metric,
  imperial,
}

class Settings extends StatefulWidget {
  final WeatherCubit weatherCubit;

  const Settings({required this.weatherCubit});

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  TextEditingController _cityController = TextEditingController();
  ChosenUnits _units = ChosenUnits.metric;
  bool isValid = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: Constants.defaultPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Change City'),
          Padding(
            padding: const EdgeInsets.all(Constants.defaultPadding),
            child: TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              controller: _cityController,
              validator: (value) {
                isValid = false;
                if (value!.isEmpty) {
                  return 'You need to enter the city';
                } else if (value.contains(RegExp(r'[0-9]'))) {
                  return 'Remove numbers from provided city';
                } else if (value.length < 3) {
                  return 'Cities should have length of at least\n 3 characters';
                }
                isValid = true;
                return null;
              },
            ),
          ),
          RadioListTile(
            value: ChosenUnits.metric,
            groupValue: _units,
            title: Text(
              ChosenUnits.metric
                  .toString()
                  .replaceFirst('ChosenUnits.', '')
                  .replaceRange(0, 1, 'M'),
            ),
            onChanged: (ChosenUnits? value) {
              setState(() {
                _units = value!;
              });
            },
          ),
          RadioListTile(
            value: ChosenUnits.imperial,
            groupValue: _units,
            title: Text(
              ChosenUnits.imperial
                  .toString()
                  .replaceFirst('ChosenUnits.', '')
                  .replaceRange(0, 1, 'I'),
            ),
            onChanged: (ChosenUnits? value) {
              setState(() {
                _units = value!;
              });
            },
          ),
          SizedBox(height: Constants.defaultPadding),
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
              if (isValid) {
                return widget.weatherCubit.changeCityAndUnit(
                  name: _cityController.value.text,
                  units: _units == ChosenUnits.metric ? 'metric' : 'imperial',
                );
              }
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  behavior: SnackBarBehavior.floating,
                  content: Text(
                    'City is not valid!',
                  ),
                ),
              );
            },
            icon: Icon(Icons.published_with_changes_outlined),
            iconSize: Constants.imageSize / 2,
          ),
        ],
      ),
    );
  }
}
