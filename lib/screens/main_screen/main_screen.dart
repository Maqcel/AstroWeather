import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '/config/exceptions/exceptions.dart';
import '/config/injection/injection.dart';
import '/constants.dart';
import '/cubit/weather_cubit.dart';
import '/screens/main_screen/components/additional_info.dart';
import '/screens/main_screen/components/clock_widget.dart';
import '/screens/main_screen/components/fragment.dart';
import '/screens/main_screen/components/future_forecasts.dart';
import '/screens/main_screen/components/general_info.dart';
import '/screens/main_screen/components/settings.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final WeatherCubit _weatherCubit = WeatherCubit(getIt.get());

  @override
  void initState() {
    _weatherCubit.isForecastStoredLocally();
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
      drawer: Settings(weatherCubit: _weatherCubit),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(Constants.appName),
            ClockWidget(),
          ],
        ),
        actions: [
          BlocBuilder<WeatherCubit, WeatherState>(
            bloc: _weatherCubit,
            builder: (context, state) {
              return !state.isLoading
                  ? IconButton(
                      onPressed: () {
                        state.isFavorite
                            ? _weatherCubit.removeFavoriteForecast()
                            : _weatherCubit.addFavoriteForecast();
                      },
                      icon: state.isFavorite
                          ? Icon(Icons.favorite_outlined)
                          : Icon(Icons.favorite_outline_outlined),
                    )
                  : Container();
            },
          ),
        ],
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
                      child: Text(
                        '${state.forecast!.name} from: ${state.forecast!.timestamp}\nUnits: ${state.forecast!.units}',
                        textAlign: TextAlign.center,
                      ),
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
                                  child: GeneralInfo(state: state),
                                ),
                                Fragment(
                                  child: AdditionalInfo(state: state),
                                ),
                                Fragment(
                                  child: FutureForecasts(state: state),
                                )
                              ],
                            );
                          }
                          final PageController controller =
                              PageController(initialPage: 0);
                          return PageView(
                            controller: controller,
                            scrollDirection: Axis.vertical,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Fragment(
                                      child: GeneralInfo(state: state),
                                    ),
                                  ),
                                  Expanded(
                                    child: Fragment(
                                      child: AdditionalInfo(state: state),
                                    ),
                                  ),
                                ],
                              ),
                              Fragment(
                                child: FutureForecasts(state: state),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                );
        },
        listener: (context, state) {
          if (state.validator == const HiveException.noDataFound()) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                content: Text(
                  state.validator.getString(),
                ),
              ),
            );
            _weatherCubit.clearErrorState();
          }
          if (state.validator == const InternetException.noConnection() ||
              state.validator == const InternetException.restoredConnection()) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                content: Text(
                  state.validator.getString(),
                ),
              ),
            );
            _weatherCubit.clearErrorState();
          }
          if (state.validator == const RequestException.cityNotFound() ||
              state.validator == const RequestException.requestFailure()) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                content: Text(
                  state.validator.getString(),
                ),
              ),
            );
            _weatherCubit.clearErrorState();
          }
          if (state.validator == const DataChange.dataChange()) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                content: Text(
                  state.validator.getString(),
                ),
              ),
            );
            _weatherCubit.clearErrorState();
          }
        },
      ),
    );
  }
}
