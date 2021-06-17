import 'package:freezed_annotation/freezed_annotation.dart';

part 'wind.freezed.dart';
part 'wind.g.dart';

@freezed
class Wind with _$Wind {
  factory Wind({
    required final double speed,
    required final int deg,
  }) = _Wind;

  const Wind._();

  factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);
}
