// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'weather_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WeatherStateTearOff {
  const _$WeatherStateTearOff();

  _WeatherState call(
      {required String name,
      required bool isLoading,
      required Forecast? forecast,
      required List<Forecast>? futureForecasts,
      required AppExceptions validator,
      required bool isFetched,
      required String unit,
      required bool isFavorite}) {
    return _WeatherState(
      name: name,
      isLoading: isLoading,
      forecast: forecast,
      futureForecasts: futureForecasts,
      validator: validator,
      isFetched: isFetched,
      unit: unit,
      isFavorite: isFavorite,
    );
  }
}

/// @nodoc
const $WeatherState = _$WeatherStateTearOff();

/// @nodoc
mixin _$WeatherState {
  String get name => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Forecast? get forecast => throw _privateConstructorUsedError;
  List<Forecast>? get futureForecasts => throw _privateConstructorUsedError;
  AppExceptions get validator => throw _privateConstructorUsedError;
  bool get isFetched => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res>;
  $Res call(
      {String name,
      bool isLoading,
      Forecast? forecast,
      List<Forecast>? futureForecasts,
      AppExceptions validator,
      bool isFetched,
      String unit,
      bool isFavorite});

  $ForecastCopyWith<$Res>? get forecast;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res> implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  final WeatherState _value;
  // ignore: unused_field
  final $Res Function(WeatherState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? isLoading = freezed,
    Object? forecast = freezed,
    Object? futureForecasts = freezed,
    Object? validator = freezed,
    Object? isFetched = freezed,
    Object? unit = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      forecast: forecast == freezed
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as Forecast?,
      futureForecasts: futureForecasts == freezed
          ? _value.futureForecasts
          : futureForecasts // ignore: cast_nullable_to_non_nullable
              as List<Forecast>?,
      validator: validator == freezed
          ? _value.validator
          : validator // ignore: cast_nullable_to_non_nullable
              as AppExceptions,
      isFetched: isFetched == freezed
          ? _value.isFetched
          : isFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ForecastCopyWith<$Res>? get forecast {
    if (_value.forecast == null) {
      return null;
    }

    return $ForecastCopyWith<$Res>(_value.forecast!, (value) {
      return _then(_value.copyWith(forecast: value));
    });
  }
}

/// @nodoc
abstract class _$WeatherStateCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$WeatherStateCopyWith(
          _WeatherState value, $Res Function(_WeatherState) then) =
      __$WeatherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      bool isLoading,
      Forecast? forecast,
      List<Forecast>? futureForecasts,
      AppExceptions validator,
      bool isFetched,
      String unit,
      bool isFavorite});

  @override
  $ForecastCopyWith<$Res>? get forecast;
}

/// @nodoc
class __$WeatherStateCopyWithImpl<$Res> extends _$WeatherStateCopyWithImpl<$Res>
    implements _$WeatherStateCopyWith<$Res> {
  __$WeatherStateCopyWithImpl(
      _WeatherState _value, $Res Function(_WeatherState) _then)
      : super(_value, (v) => _then(v as _WeatherState));

  @override
  _WeatherState get _value => super._value as _WeatherState;

  @override
  $Res call({
    Object? name = freezed,
    Object? isLoading = freezed,
    Object? forecast = freezed,
    Object? futureForecasts = freezed,
    Object? validator = freezed,
    Object? isFetched = freezed,
    Object? unit = freezed,
    Object? isFavorite = freezed,
  }) {
    return _then(_WeatherState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      forecast: forecast == freezed
          ? _value.forecast
          : forecast // ignore: cast_nullable_to_non_nullable
              as Forecast?,
      futureForecasts: futureForecasts == freezed
          ? _value.futureForecasts
          : futureForecasts // ignore: cast_nullable_to_non_nullable
              as List<Forecast>?,
      validator: validator == freezed
          ? _value.validator
          : validator // ignore: cast_nullable_to_non_nullable
              as AppExceptions,
      isFetched: isFetched == freezed
          ? _value.isFetched
          : isFetched // ignore: cast_nullable_to_non_nullable
              as bool,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: isFavorite == freezed
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WeatherState extends _WeatherState {
  const _$_WeatherState(
      {required this.name,
      required this.isLoading,
      required this.forecast,
      required this.futureForecasts,
      required this.validator,
      required this.isFetched,
      required this.unit,
      required this.isFavorite})
      : super._();

  @override
  final String name;
  @override
  final bool isLoading;
  @override
  final Forecast? forecast;
  @override
  final List<Forecast>? futureForecasts;
  @override
  final AppExceptions validator;
  @override
  final bool isFetched;
  @override
  final String unit;
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'WeatherState(name: $name, isLoading: $isLoading, forecast: $forecast, futureForecasts: $futureForecasts, validator: $validator, isFetched: $isFetched, unit: $unit, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WeatherState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.forecast, forecast) ||
                const DeepCollectionEquality()
                    .equals(other.forecast, forecast)) &&
            (identical(other.futureForecasts, futureForecasts) ||
                const DeepCollectionEquality()
                    .equals(other.futureForecasts, futureForecasts)) &&
            (identical(other.validator, validator) ||
                const DeepCollectionEquality()
                    .equals(other.validator, validator)) &&
            (identical(other.isFetched, isFetched) ||
                const DeepCollectionEquality()
                    .equals(other.isFetched, isFetched)) &&
            (identical(other.unit, unit) ||
                const DeepCollectionEquality().equals(other.unit, unit)) &&
            (identical(other.isFavorite, isFavorite) ||
                const DeepCollectionEquality()
                    .equals(other.isFavorite, isFavorite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(forecast) ^
      const DeepCollectionEquality().hash(futureForecasts) ^
      const DeepCollectionEquality().hash(validator) ^
      const DeepCollectionEquality().hash(isFetched) ^
      const DeepCollectionEquality().hash(unit) ^
      const DeepCollectionEquality().hash(isFavorite);

  @JsonKey(ignore: true)
  @override
  _$WeatherStateCopyWith<_WeatherState> get copyWith =>
      __$WeatherStateCopyWithImpl<_WeatherState>(this, _$identity);
}

abstract class _WeatherState extends WeatherState {
  const factory _WeatherState(
      {required String name,
      required bool isLoading,
      required Forecast? forecast,
      required List<Forecast>? futureForecasts,
      required AppExceptions validator,
      required bool isFetched,
      required String unit,
      required bool isFavorite}) = _$_WeatherState;
  const _WeatherState._() : super._();

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Forecast? get forecast => throw _privateConstructorUsedError;
  @override
  List<Forecast>? get futureForecasts => throw _privateConstructorUsedError;
  @override
  AppExceptions get validator => throw _privateConstructorUsedError;
  @override
  bool get isFetched => throw _privateConstructorUsedError;
  @override
  String get unit => throw _privateConstructorUsedError;
  @override
  bool get isFavorite => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WeatherStateCopyWith<_WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}
