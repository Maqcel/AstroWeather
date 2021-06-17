import 'package:freezed_annotation/freezed_annotation.dart';

part 'coord.freezed.dart';
part 'coord.g.dart';

@freezed
class Coord with _$Coord {
  factory Coord({
    required final double lon,
    required final double lat,
  }) = _Coord;

  const Coord._();

  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
}
