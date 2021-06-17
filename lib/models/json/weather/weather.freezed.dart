// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
class _$WeatherTearOff {
  const _$WeatherTearOff();

  _Weather call(
      {required double temp,
      required double feels_like,
      required double temp_min,
      required double temp_max,
      required int pressure,
      required int humidity}) {
    return _Weather(
      temp: temp,
      feels_like: feels_like,
      temp_min: temp_min,
      temp_max: temp_max,
      pressure: pressure,
      humidity: humidity,
    );
  }

  Weather fromJson(Map<String, Object> json) {
    return Weather.fromJson(json);
  }
}

/// @nodoc
const $Weather = _$WeatherTearOff();

/// @nodoc
mixin _$Weather {
  double get temp =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  double get feels_like =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  double get temp_min =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  double get temp_max => throw _privateConstructorUsedError;
  int get pressure => throw _privateConstructorUsedError;
  int get humidity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res>;
  $Res call(
      {double temp,
      double feels_like,
      double temp_min,
      double temp_max,
      int pressure,
      int humidity});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res> implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  final Weather _value;
  // ignore: unused_field
  final $Res Function(Weather) _then;

  @override
  $Res call({
    Object? temp = freezed,
    Object? feels_like = freezed,
    Object? temp_min = freezed,
    Object? temp_max = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_value.copyWith(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feels_like: feels_like == freezed
          ? _value.feels_like
          : feels_like // ignore: cast_nullable_to_non_nullable
              as double,
      temp_min: temp_min == freezed
          ? _value.temp_min
          : temp_min // ignore: cast_nullable_to_non_nullable
              as double,
      temp_max: temp_max == freezed
          ? _value.temp_max
          : temp_max // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) then) =
      __$WeatherCopyWithImpl<$Res>;
  @override
  $Res call(
      {double temp,
      double feels_like,
      double temp_min,
      double temp_max,
      int pressure,
      int humidity});
}

/// @nodoc
class __$WeatherCopyWithImpl<$Res> extends _$WeatherCopyWithImpl<$Res>
    implements _$WeatherCopyWith<$Res> {
  __$WeatherCopyWithImpl(_Weather _value, $Res Function(_Weather) _then)
      : super(_value, (v) => _then(v as _Weather));

  @override
  _Weather get _value => super._value as _Weather;

  @override
  $Res call({
    Object? temp = freezed,
    Object? feels_like = freezed,
    Object? temp_min = freezed,
    Object? temp_max = freezed,
    Object? pressure = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_Weather(
      temp: temp == freezed
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double,
      feels_like: feels_like == freezed
          ? _value.feels_like
          : feels_like // ignore: cast_nullable_to_non_nullable
              as double,
      temp_min: temp_min == freezed
          ? _value.temp_min
          : temp_min // ignore: cast_nullable_to_non_nullable
              as double,
      temp_max: temp_max == freezed
          ? _value.temp_max
          : temp_max // ignore: cast_nullable_to_non_nullable
              as double,
      pressure: pressure == freezed
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int,
      humidity: humidity == freezed
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weather extends _Weather {
  _$_Weather(
      {required this.temp,
      required this.feels_like,
      required this.temp_min,
      required this.temp_max,
      required this.pressure,
      required this.humidity})
      : super._();

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$_$_WeatherFromJson(json);

  @override
  final double temp;
  @override // ignore: non_constant_identifier_names
  final double feels_like;
  @override // ignore: non_constant_identifier_names
  final double temp_min;
  @override // ignore: non_constant_identifier_names
  final double temp_max;
  @override
  final int pressure;
  @override
  final int humidity;

  @override
  String toString() {
    return 'Weather(temp: $temp, feels_like: $feels_like, temp_min: $temp_min, temp_max: $temp_max, pressure: $pressure, humidity: $humidity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Weather &&
            (identical(other.temp, temp) ||
                const DeepCollectionEquality().equals(other.temp, temp)) &&
            (identical(other.feels_like, feels_like) ||
                const DeepCollectionEquality()
                    .equals(other.feels_like, feels_like)) &&
            (identical(other.temp_min, temp_min) ||
                const DeepCollectionEquality()
                    .equals(other.temp_min, temp_min)) &&
            (identical(other.temp_max, temp_max) ||
                const DeepCollectionEquality()
                    .equals(other.temp_max, temp_max)) &&
            (identical(other.pressure, pressure) ||
                const DeepCollectionEquality()
                    .equals(other.pressure, pressure)) &&
            (identical(other.humidity, humidity) ||
                const DeepCollectionEquality()
                    .equals(other.humidity, humidity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(temp) ^
      const DeepCollectionEquality().hash(feels_like) ^
      const DeepCollectionEquality().hash(temp_min) ^
      const DeepCollectionEquality().hash(temp_max) ^
      const DeepCollectionEquality().hash(pressure) ^
      const DeepCollectionEquality().hash(humidity);

  @JsonKey(ignore: true)
  @override
  _$WeatherCopyWith<_Weather> get copyWith =>
      __$WeatherCopyWithImpl<_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WeatherToJson(this);
  }
}

abstract class _Weather extends Weather {
  factory _Weather(
      {required double temp,
      required double feels_like,
      required double temp_min,
      required double temp_max,
      required int pressure,
      required int humidity}) = _$_Weather;
  _Weather._() : super._();

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override
  double get temp => throw _privateConstructorUsedError;
  @override // ignore: non_constant_identifier_names
  double get feels_like => throw _privateConstructorUsedError;
  @override // ignore: non_constant_identifier_names
  double get temp_min => throw _privateConstructorUsedError;
  @override // ignore: non_constant_identifier_names
  double get temp_max => throw _privateConstructorUsedError;
  @override
  int get pressure => throw _privateConstructorUsedError;
  @override
  int get humidity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeatherCopyWith<_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}
