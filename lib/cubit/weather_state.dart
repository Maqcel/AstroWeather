part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    required String name,
    required bool isLoading,
    required Forecast? forecast,
    required List<Forecast>? futureForecasts,
    required AppExceptions validator,
    required bool isFetched,
    required String unit,
    required bool isFavorite,
  }) = _WeatherState;

  const WeatherState._();

  factory WeatherState.init({required String name}) => WeatherState(
        forecast: null,
        futureForecasts: null,
        isLoading: true,
        name: name,
        isFetched: false,
        unit: 'metric',
        validator: ValueIsValid.valueIsValid(),
        isFavorite: false,
      );
}
