import 'package:astro_weather_2/models/json/coord/coord.dart';
import 'package:astro_weather_2/models/json/description/description.dart';
import 'package:astro_weather_2/models/json/weather/weather.dart';
import 'package:astro_weather_2/models/json/wind/wind.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast.freezed.dart';

@freezed
class Forecast with _$Forecast {
  factory Forecast({
    required String name,
    required Coord coord,
    required Wind wind,
    required Weather weather,
    required Description description,
  }) = _Forecast;

  const Forecast._();
}
