part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    required String name,
    required bool isLoading,
    required bool isConnected,
    required Forecast? forecast,
    required AppExceptions validator,
    required bool isFetched,
  }) = _WeatherState;

  const WeatherState._();

  factory WeatherState.init({required String name}) => WeatherState(
        forecast: null,
        isLoading: true,
        isConnected: false,
        name: name,
        isFetched: false,
        validator: ValueIsValid.valueIsValid(),
      );
}
