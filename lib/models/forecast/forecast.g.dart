// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ForecastHiveAdapter extends TypeAdapter<_$_Forecast> {
  @override
  final int typeId = 0;

  @override
  _$_Forecast read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Forecast(
      timestamp: fields[0] as String,
      name: fields[1] as String,
      coord: fields[2] as Coord,
      wind: fields[3] as Wind,
      weather: fields[4] as Weather,
      description: fields[5] as Description,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Forecast obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.timestamp)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.coord)
      ..writeByte(3)
      ..write(obj.wind)
      ..writeByte(4)
      ..write(obj.weather)
      ..writeByte(5)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ForecastHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Forecast _$_$_ForecastFromJson(Map<String, dynamic> json) {
  return _$_Forecast(
    timestamp: json['timestamp'] as String,
    name: json['name'] as String,
    coord: Coord.fromJson(json['coord'] as Map<String, dynamic>),
    wind: Wind.fromJson(json['wind'] as Map<String, dynamic>),
    weather: Weather.fromJson(json['weather'] as Map<String, dynamic>),
    description:
        Description.fromJson(json['description'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ForecastToJson(_$_Forecast instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'name': instance.name,
      'coord': instance.coord,
      'wind': instance.wind,
      'weather': instance.weather,
      'description': instance.description,
    };
