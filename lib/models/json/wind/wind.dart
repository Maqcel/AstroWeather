import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'wind.freezed.dart';
part 'wind.g.dart';

@freezed
class Wind with _$Wind {
  @HiveType(typeId: 2, adapterName: 'WindHiveAdapter')
  factory Wind({
    @HiveField(0) required final double speed,
    @HiveField(1) required final int deg,
    @HiveField(2) required final double gust,
  }) = _Wind;

  const Wind._();

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}
