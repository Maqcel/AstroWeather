// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wind.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Wind _$_$_WindFromJson(Map<String, dynamic> json) {
  return _$_Wind(
    speed: (json['speed'] as num).toDouble(),
    deg: json['deg'] as int,
    gust: (json['gust'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_WindToJson(_$_Wind instance) => <String, dynamic>{
      'speed': instance.speed,
      'deg': instance.deg,
      'gust': instance.gust,
    };
