import 'package:freezed_annotation/freezed_annotation.dart';

part 'description.freezed.dart';
part 'description.g.dart';

@freezed
class Description with _$Description {
  factory Description({
    required String main,
    required String description,
    required String icon,
  }) = _Description;

  const Description._();

  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);
}
