import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'description.freezed.dart';
part 'description.g.dart';

@freezed
class Description with _$Description {
  @HiveType(typeId: 4, adapterName: 'DescriptionHiveAdapter')
  factory Description({
    @HiveField(0) required String main,
    @HiveField(1) required String description,
    @HiveField(2) required String icon,
  }) = _Description;

  const Description._();

  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);
}
