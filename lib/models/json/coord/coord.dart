import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'coord.freezed.dart';
part 'coord.g.dart';

@freezed
class Coord with _$Coord {
  @HiveType(typeId: 1, adapterName: 'CoordHiveAdapter')
  factory Coord({
    @HiveField(0) required final double lon,
    @HiveField(1) required final double lat,
  }) = _Coord;

  const Coord._();

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
}
