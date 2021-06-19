import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '/models/json/coord/coord.dart';
import '/models/json/description/description.dart';
import '/models/json/weather/weather.dart';
import '/models/json/wind/wind.dart';

part 'forecast.freezed.dart';
part 'forecast.g.dart';

@freezed
class Forecast with _$Forecast {
  @HiveType(typeId: 0, adapterName: 'ForecastHiveAdapter')
  factory Forecast({
    @HiveField(0) required String timestamp,
    @HiveField(1) required String name,
    @HiveField(2) required Coord coord,
    @HiveField(3) required Wind wind,
    @HiveField(4) required Weather weather,
    @HiveField(5) required Description description,
    @HiveField(6) required String units,
  }) = _Forecast;

  const Forecast._();

  factory Forecast.fromJson(Map<String, dynamic> json) =>
      _$ForecastFromJson(json);
}
