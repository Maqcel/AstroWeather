// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForecastTearOff {
  const _$ForecastTearOff();

  _Forecast call(
      {required String name,
      required Coord coord,
      required Wind wind,
      required Weather weather}) {
    return _Forecast(
      name: name,
      coord: coord,
      wind: wind,
      weather: weather,
    );
  }
}

/// @nodoc
const $Forecast = _$ForecastTearOff();

/// @nodoc
mixin _$Forecast {
  String get name => throw _privateConstructorUsedError;
  Coord get coord => throw _privateConstructorUsedError;
  Wind get wind => throw _privateConstructorUsedError;
  Weather get weather => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForecastCopyWith<Forecast> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastCopyWith<$Res> {
  factory $ForecastCopyWith(Forecast value, $Res Function(Forecast) then) =
      _$ForecastCopyWithImpl<$Res>;
  $Res call({String name, Coord coord, Wind wind, Weather weather});

  $CoordCopyWith<$Res> get coord;
  $WindCopyWith<$Res> get wind;
  $WeatherCopyWith<$Res> get weather;
}

/// @nodoc
class _$ForecastCopyWithImpl<$Res> implements $ForecastCopyWith<$Res> {
  _$ForecastCopyWithImpl(this._value, this._then);

  final Forecast _value;
  // ignore: unused_field
  final $Res Function(Forecast) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? coord = freezed,
    Object? wind = freezed,
    Object? weather = freezed,
  }) {
    return _then(_value.copyWith(
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
}

/// @nodoc
abstract class _$ForecastCopyWith<$Res> implements $ForecastCopyWith<$Res> {
  factory _$ForecastCopyWith(_Forecast value, $Res Function(_Forecast) then) =
      __$ForecastCopyWithImpl<$Res>;
  @override
  $Res call({String name, Coord coord, Wind wind, Weather weather});

  @override
  $CoordCopyWith<$Res> get coord;
  @override
  $WindCopyWith<$Res> get wind;
  @override
  $WeatherCopyWith<$Res> get weather;
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
    Object? name = freezed,
    Object? coord = freezed,
    Object? wind = freezed,
    Object? weather = freezed,
  }) {
    return _then(_Forecast(
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
    ));
  }
}

/// @nodoc

class _$_Forecast extends _Forecast {
  _$_Forecast(
      {required this.name,
      required this.coord,
      required this.wind,
      required this.weather})
      : super._();

  @override
  final String name;
  @override
  final Coord coord;
  @override
  final Wind wind;
  @override
  final Weather weather;

  @override
  String toString() {
    return 'Forecast(name: $name, coord: $coord, wind: $wind, weather: $weather)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Forecast &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.coord, coord) ||
                const DeepCollectionEquality().equals(other.coord, coord)) &&
            (identical(other.wind, wind) ||
                const DeepCollectionEquality().equals(other.wind, wind)) &&
            (identical(other.weather, weather) ||
                const DeepCollectionEquality().equals(other.weather, weather)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(coord) ^
      const DeepCollectionEquality().hash(wind) ^
      const DeepCollectionEquality().hash(weather);

  @JsonKey(ignore: true)
  @override
  _$ForecastCopyWith<_Forecast> get copyWith =>
      __$ForecastCopyWithImpl<_Forecast>(this, _$identity);
}

abstract class _Forecast extends Forecast {
  factory _Forecast(
      {required String name,
      required Coord coord,
      required Wind wind,
      required Weather weather}) = _$_Forecast;
  _Forecast._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  Coord get coord => throw _privateConstructorUsedError;
  @override
  Wind get wind => throw _privateConstructorUsedError;
  @override
  Weather get weather => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ForecastCopyWith<_Forecast> get copyWith =>
      throw _privateConstructorUsedError;
}
