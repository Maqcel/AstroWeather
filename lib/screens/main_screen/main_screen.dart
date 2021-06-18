import 'package:astro_weather_2/config/injection/injection.dart';
import 'package:astro_weather_2/constants.dart';
import 'package:astro_weather_2/cubit/weather_cubit.dart';
import 'package:astro_weather_2/screens/main_screen/components/additional_info.dart';
import 'package:astro_weather_2/screens/main_screen/components/clock_widget.dart';
import 'package:astro_weather_2/screens/main_screen/components/fragment.dart';
import 'package:astro_weather_2/screens/main_screen/components/general_info.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final WeatherCubit _weatherCubit = WeatherCubit(getIt.get());
  bool widgetConnection = true;

  @override
  void initState() {
    _weatherCubit.startFetching();
    super.initState();
  }

  @override
  void dispose() {
    _weatherCubit.closeTimers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(Constants.appName),
            ClockWidget(),
          ],
        ),
      ),
      body: BlocConsumer<WeatherCubit, WeatherState>(
        bloc: _weatherCubit,
        builder: (context, state) {
          return state.isLoading
              ? Center(child: CircularProgressIndicator())
              : Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Constants.defaultPadding),
                      child: Text('Place name'),
                    ),
                    Expanded(
                      flex: 1,
                      child: LayoutBuilder(
                        builder: (context, constrains) {
                          if (constrains.maxWidth <= Constants.mobileWidth) {
                            final PageController controller =
                                PageController(initialPage: 0);
                            return PageView(
                              controller: controller,
                              scrollDirection: Axis.horizontal,
                              children: [
                                Fragment(
                                  child: GeneralInfo(),
                                ),
                                Fragment(
                                  child: AdditionalInfo(),
                                ),
                              ],
                            );
                          }
                          return Row(
                            children: [
                              Expanded(
                                child: Fragment(
                                  child: GeneralInfo(),
                                ),
                              ),
                              Expanded(
                                child: Fragment(
                                  child: AdditionalInfo(),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                );
        },
        listener: (context, state) {
          if (!state.isConnected) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'No internet connection!\nWaiting with reconnect with last fetched forecast!',
                ),
              ),
            );
            _weatherCubit.waitForConnection();
            widgetConnection = false;
          }
          if (!widgetConnection && state.isConnected) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  'Restored connection!\nFetching new forecasts!',
                ),
              ),
            );
            widgetConnection = true;
          }
        },
      ),
    );
  }
}
