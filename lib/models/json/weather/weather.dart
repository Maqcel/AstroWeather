import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  @HiveType(typeId: 3, adapterName: 'WeatherHiveAdapter')
  factory Weather({
    @HiveField(0) required final double temp,
    // ignore: non_constant_identifier_names
    @HiveField(1) required final double feels_like,
    // ignore: non_constant_identifier_names
    @HiveField(2) required final double temp_min,
    // ignore: non_constant_identifier_names
    @HiveField(3) required final double temp_max,
    @HiveField(4) required final int pressure,
    @HiveField(5) required final int humidity,
  }) = _Weather;

  const Weather._();

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
