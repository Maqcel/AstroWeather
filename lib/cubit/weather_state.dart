part of 'weather_cubit.dart';

@freezed
abstract class WeatherState with _$WeatherState {
  const factory WeatherState({
    required String name,
    required bool isLoading,
    required Forecast? forecast,
  }) = _WeatherState;

  const WeatherState._();

  factory WeatherState.init({required String name}) => WeatherState(
        forecast: null,
        isLoading: false,
        name: name,
      );
}
