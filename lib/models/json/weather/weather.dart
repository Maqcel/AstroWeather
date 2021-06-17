import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  factory Weather({
    required final double temp,
    // ignore: non_constant_identifier_names
    required final double feels_like,
    // ignore: non_constant_identifier_names
    required final double temp_min,
    // ignore: non_constant_identifier_names
    required final double temp_max,
    required final int pressure,
    required final int humidity,
  }) = _Weather;

  const Weather._();

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
