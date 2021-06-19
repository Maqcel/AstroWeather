// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Forecast _$ForecastFromJson(Map<String, dynamic> json) {
  return _Forecast.fromJson(json);
}

/// @nodoc
class _$ForecastTearOff {
  const _$ForecastTearOff();

  _Forecast call(
      {@HiveField(0) required String timestamp,
      @HiveField(1) required String name,
      @HiveField(2) required Coord coord,
      @HiveField(3) required Wind wind,
      @HiveField(4) required Weather weather,
      @HiveField(5) required Description description,
      @HiveField(6) required String units}) {
    return _Forecast(
      timestamp: timestamp,
      name: name,
      coord: coord,
      wind: wind,
      weather: weather,
      description: description,
      units: units,
    );
  }

  Forecast fromJson(Map<String, Object> json) {
    return Forecast.fromJson(json);
  }
}

/// @nodoc
const $Forecast = _$ForecastTearOff();

/// @nodoc
mixin _$Forecast {
  @HiveField(0)
  String get timestamp => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  Coord get coord => throw _privateConstructorUsedError;
  @HiveField(3)
  Wind get wind => throw _privateConstructorUsedError;
  @HiveField(4)
  Weather get weather => throw _privateConstructorUsedError;
  @HiveField(5)
  Description get description => throw _privateConstructorUsedError;
  @HiveField(6)
  String get units => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastCopyWith<Forecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastCopyWith<$Res> {
  factory $ForecastCopyWith(Forecast value, $Res Function(Forecast) then) =
      _$ForecastCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String timestamp,
      @HiveField(1) String name,
      @HiveField(2) Coord coord,
      @HiveField(3) Wind wind,
      @HiveField(4) Weather weather,
      @HiveField(5) Description description,
      @HiveField(6) String units});

  $CoordCopyWith<$Res> get coord;
  $WindCopyWith<$Res> get wind;
  $WeatherCopyWith<$Res> get weather;
  $DescriptionCopyWith<$Res> get description;
}

/// @nodoc
class _$ForecastCopyWithImpl<$Res> implements $ForecastCopyWith<$Res> {
  _$ForecastCopyWithImpl(this._value, this._then);

  final Forecast _value;
  // ignore: unused_field
  final $Res Function(Forecast) _then;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? name = freezed,
    Object? coord = freezed,
    Object? wind = freezed,
    Object? weather = freezed,
    Object? description = freezed,
    Object? units = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coord: coord == freezed
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Coord,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description,
      units: units == freezed
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $CoordCopyWith<$Res> get coord {
    return $CoordCopyWith<$Res>(_value.coord, (value) {
      return _then(_value.copyWith(coord: value));
    });
  }

  @override
  $WindCopyWith<$Res> get wind {
    return $WindCopyWith<$Res>(_value.wind, (value) {
      return _then(_value.copyWith(wind: value));
    });
  }

  @override
  $WeatherCopyWith<$Res> get weather {
    return $WeatherCopyWith<$Res>(_value.weather, (value) {
      return _then(_value.copyWith(weather: value));
    });
  }

  @override
  $DescriptionCopyWith<$Res> get description {
    return $DescriptionCopyWith<$Res>(_value.description, (value) {
      return _then(_value.copyWith(description: value));
    });
  }
}

/// @nodoc
abstract class _$ForecastCopyWith<$Res> implements $ForecastCopyWith<$Res> {
  factory _$ForecastCopyWith(_Forecast value, $Res Function(_Forecast) then) =
      __$ForecastCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String timestamp,
      @HiveField(1) String name,
      @HiveField(2) Coord coord,
      @HiveField(3) Wind wind,
      @HiveField(4) Weather weather,
      @HiveField(5) Description description,
      @HiveField(6) String units});

  @override
  $CoordCopyWith<$Res> get coord;
  @override
  $WindCopyWith<$Res> get wind;
  @override
  $WeatherCopyWith<$Res> get weather;
  @override
  $DescriptionCopyWith<$Res> get description;
}

/// @nodoc
class __$ForecastCopyWithImpl<$Res> extends _$ForecastCopyWithImpl<$Res>
    implements _$ForecastCopyWith<$Res> {
  __$ForecastCopyWithImpl(_Forecast _value, $Res Function(_Forecast) _then)
      : super(_value, (v) => _then(v as _Forecast));

  @override
  _Forecast get _value => super._value as _Forecast;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? name = freezed,
    Object? coord = freezed,
    Object? wind = freezed,
    Object? weather = freezed,
    Object? description = freezed,
    Object? units = freezed,
  }) {
    return _then(_Forecast(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coord: coord == freezed
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as Coord,
      wind: wind == freezed
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as Wind,
      weather: weather == freezed
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as Weather,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description,
      units: units == freezed
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0, adapterName: 'ForecastHiveAdapter')
class _$_Forecast extends _Forecast {
  _$_Forecast(
      {@HiveField(0) required this.timestamp,
      @HiveField(1) required this.name,
      @HiveField(2) required this.coord,
      @HiveField(3) required this.wind,
      @HiveField(4) required this.weather,
      @HiveField(5) required this.description,
      @HiveField(6) required this.units})
      : super._();

  factory _$_Forecast.fromJson(Map<String, dynamic> json) =>
      _$_$_ForecastFromJson(json);

  @override
  @HiveField(0)
  final String timestamp;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  final Coord coord;
  @override
  @HiveField(3)
  final Wind wind;
  @override
  @HiveField(4)
  final Weather weather;
  @override
  @HiveField(5)
  final Description description;
  @override
  @HiveField(6)
  final String units;

  @override
  String toString() {
    return 'Forecast(timestamp: $timestamp, name: $name, coord: $coord, wind: $wind, weather: $weather, description: $description, units: $units)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Forecast &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.coord, coord) ||
                const DeepCollectionEquality().equals(other.coord, coord)) &&
            (identical(other.wind, wind) ||
                const DeepCollectionEquality().equals(other.wind, wind)) &&
            (identical(other.weather, weather) ||
                const DeepCollectionEquality()
                    .equals(other.weather, weather)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.units, units) ||
                const DeepCollectionEquality().equals(other.units, units)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(coord) ^
      const DeepCollectionEquality().hash(wind) ^
      const DeepCollectionEquality().hash(weather) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(units);

  @JsonKey(ignore: true)
  @override
  _$ForecastCopyWith<_Forecast> get copyWith =>
      __$ForecastCopyWithImpl<_Forecast>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ForecastToJson(this);
  }
}

abstract class _Forecast extends Forecast {
  factory _Forecast(
      {@HiveField(0) required String timestamp,
      @HiveField(1) required String name,
      @HiveField(2) required Coord coord,
      @HiveField(3) required Wind wind,
      @HiveField(4) required Weather weather,
      @HiveField(5) required Description description,
      @HiveField(6) required String units}) = _$_Forecast;
  _Forecast._() : super._();

  factory _Forecast.fromJson(Map<String, dynamic> json) = _$_Forecast.fromJson;

  @override
  @HiveField(0)
  String get timestamp => throw _privateConstructorUsedError;
  @override
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @override
  @HiveField(2)
  Coord get coord => throw _privateConstructorUsedError;
  @override
  @HiveField(3)
  Wind get wind => throw _privateConstructorUsedError;
  @override
  @HiveField(4)
  Weather get weather => throw _privateConstructorUsedError;
  @override
  @HiveField(5)
  Description get description => throw _privateConstructorUsedError;
  @override
  @HiveField(6)
  String get units => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ForecastCopyWith<_Forecast> get copyWith =>
      throw _privateConstructorUsedError;
}
