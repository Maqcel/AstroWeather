// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RequestExceptionTearOff {
  const _$RequestExceptionTearOff();

  RequestFailure requestFailure() {
    return const RequestFailure();
  }

  CityNotFoundFailure cityNotFound() {
    return const CityNotFoundFailure();
  }
}

/// @nodoc
const $RequestException = _$RequestExceptionTearOff();

/// @nodoc
mixin _$RequestException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestFailure,
    required TResult Function() cityNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestFailure,
    TResult Function()? cityNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestFailure value) requestFailure,
    required TResult Function(CityNotFoundFailure value) cityNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestFailure value)? requestFailure,
    TResult Function(CityNotFoundFailure value)? cityNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestExceptionCopyWith<$Res> {
  factory $RequestExceptionCopyWith(
          RequestException value, $Res Function(RequestException) then) =
      _$RequestExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestExceptionCopyWithImpl<$Res>
    implements $RequestExceptionCopyWith<$Res> {
  _$RequestExceptionCopyWithImpl(this._value, this._then);

  final RequestException _value;
  // ignore: unused_field
  final $Res Function(RequestException) _then;
}

/// @nodoc
abstract class $RequestFailureCopyWith<$Res> {
  factory $RequestFailureCopyWith(
          RequestFailure value, $Res Function(RequestFailure) then) =
      _$RequestFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestFailureCopyWithImpl<$Res>
    extends _$RequestExceptionCopyWithImpl<$Res>
    implements $RequestFailureCopyWith<$Res> {
  _$RequestFailureCopyWithImpl(
      RequestFailure _value, $Res Function(RequestFailure) _then)
      : super(_value, (v) => _then(v as RequestFailure));

  @override
  RequestFailure get _value => super._value as RequestFailure;
}

/// @nodoc

class _$RequestFailure implements RequestFailure {
  const _$RequestFailure();

  @override
  String toString() {
    return 'RequestException.requestFailure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RequestFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestFailure,
    required TResult Function() cityNotFound,
  }) {
    return requestFailure();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestFailure,
    TResult Function()? cityNotFound,
    required TResult orElse(),
  }) {
    if (requestFailure != null) {
      return requestFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestFailure value) requestFailure,
    required TResult Function(CityNotFoundFailure value) cityNotFound,
  }) {
    return requestFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestFailure value)? requestFailure,
    TResult Function(CityNotFoundFailure value)? cityNotFound,
    required TResult orElse(),
  }) {
    if (requestFailure != null) {
      return requestFailure(this);
    }
    return orElse();
  }
}

abstract class RequestFailure implements RequestException {
  const factory RequestFailure() = _$RequestFailure;
}

/// @nodoc
abstract class $CityNotFoundFailureCopyWith<$Res> {
  factory $CityNotFoundFailureCopyWith(
          CityNotFoundFailure value, $Res Function(CityNotFoundFailure) then) =
      _$CityNotFoundFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CityNotFoundFailureCopyWithImpl<$Res>
    extends _$RequestExceptionCopyWithImpl<$Res>
    implements $CityNotFoundFailureCopyWith<$Res> {
  _$CityNotFoundFailureCopyWithImpl(
      CityNotFoundFailure _value, $Res Function(CityNotFoundFailure) _then)
      : super(_value, (v) => _then(v as CityNotFoundFailure));

  @override
  CityNotFoundFailure get _value => super._value as CityNotFoundFailure;
}

/// @nodoc

class _$CityNotFoundFailure implements CityNotFoundFailure {
  const _$CityNotFoundFailure();

  @override
  String toString() {
    return 'RequestException.cityNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CityNotFoundFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestFailure,
    required TResult Function() cityNotFound,
  }) {
    return cityNotFound();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestFailure,
    TResult Function()? cityNotFound,
    required TResult orElse(),
  }) {
    if (cityNotFound != null) {
      return cityNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RequestFailure value) requestFailure,
    required TResult Function(CityNotFoundFailure value) cityNotFound,
  }) {
    return cityNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RequestFailure value)? requestFailure,
    TResult Function(CityNotFoundFailure value)? cityNotFound,
    required TResult orElse(),
  }) {
    if (cityNotFound != null) {
      return cityNotFound(this);
    }
    return orElse();
  }
}

abstract class CityNotFoundFailure implements RequestException {
  const factory CityNotFoundFailure() = _$CityNotFoundFailure;
}

/// @nodoc
class _$HiveExceptionTearOff {
  const _$HiveExceptionTearOff();

  NoDataFoundException noDataFound() {
    return const NoDataFoundException();
  }
}

/// @nodoc
const $HiveException = _$HiveExceptionTearOff();

/// @nodoc
mixin _$HiveException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noDataFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noDataFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoDataFoundException value) noDataFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoDataFoundException value)? noDataFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HiveExceptionCopyWith<$Res> {
  factory $HiveExceptionCopyWith(
          HiveException value, $Res Function(HiveException) then) =
      _$HiveExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$HiveExceptionCopyWithImpl<$Res>
    implements $HiveExceptionCopyWith<$Res> {
  _$HiveExceptionCopyWithImpl(this._value, this._then);

  final HiveException _value;
  // ignore: unused_field
  final $Res Function(HiveException) _then;
}

/// @nodoc
abstract class $NoDataFoundExceptionCopyWith<$Res> {
  factory $NoDataFoundExceptionCopyWith(NoDataFoundException value,
          $Res Function(NoDataFoundException) then) =
      _$NoDataFoundExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoDataFoundExceptionCopyWithImpl<$Res>
    extends _$HiveExceptionCopyWithImpl<$Res>
    implements $NoDataFoundExceptionCopyWith<$Res> {
  _$NoDataFoundExceptionCopyWithImpl(
      NoDataFoundException _value, $Res Function(NoDataFoundException) _then)
      : super(_value, (v) => _then(v as NoDataFoundException));

  @override
  NoDataFoundException get _value => super._value as NoDataFoundException;
}

/// @nodoc

class _$NoDataFoundException implements NoDataFoundException {
  const _$NoDataFoundException();

  @override
  String toString() {
    return 'HiveException.noDataFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoDataFoundException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noDataFound,
  }) {
    return noDataFound();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noDataFound,
    required TResult orElse(),
  }) {
    if (noDataFound != null) {
      return noDataFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoDataFoundException value) noDataFound,
  }) {
    return noDataFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoDataFoundException value)? noDataFound,
    required TResult orElse(),
  }) {
    if (noDataFound != null) {
      return noDataFound(this);
    }
    return orElse();
  }
}

abstract class NoDataFoundException implements HiveException {
  const factory NoDataFoundException() = _$NoDataFoundException;
}

/// @nodoc
class _$InternetExceptionTearOff {
  const _$InternetExceptionTearOff();

  NoConnectionFoundException noConnection() {
    return const NoConnectionFoundException();
  }

  ConnectionFoundException restoredConnection() {
    return const ConnectionFoundException();
  }
}

/// @nodoc
const $InternetException = _$InternetExceptionTearOff();

/// @nodoc
mixin _$InternetException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() restoredConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? restoredConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoConnectionFoundException value) noConnection,
    required TResult Function(ConnectionFoundException value)
        restoredConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoConnectionFoundException value)? noConnection,
    TResult Function(ConnectionFoundException value)? restoredConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetExceptionCopyWith<$Res> {
  factory $InternetExceptionCopyWith(
          InternetException value, $Res Function(InternetException) then) =
      _$InternetExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$InternetExceptionCopyWithImpl<$Res>
    implements $InternetExceptionCopyWith<$Res> {
  _$InternetExceptionCopyWithImpl(this._value, this._then);

  final InternetException _value;
  // ignore: unused_field
  final $Res Function(InternetException) _then;
}

/// @nodoc
abstract class $NoConnectionFoundExceptionCopyWith<$Res> {
  factory $NoConnectionFoundExceptionCopyWith(NoConnectionFoundException value,
          $Res Function(NoConnectionFoundException) then) =
      _$NoConnectionFoundExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoConnectionFoundExceptionCopyWithImpl<$Res>
    extends _$InternetExceptionCopyWithImpl<$Res>
    implements $NoConnectionFoundExceptionCopyWith<$Res> {
  _$NoConnectionFoundExceptionCopyWithImpl(NoConnectionFoundException _value,
      $Res Function(NoConnectionFoundException) _then)
      : super(_value, (v) => _then(v as NoConnectionFoundException));

  @override
  NoConnectionFoundException get _value =>
      super._value as NoConnectionFoundException;
}

/// @nodoc

class _$NoConnectionFoundException implements NoConnectionFoundException {
  const _$NoConnectionFoundException();

  @override
  String toString() {
    return 'InternetException.noConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoConnectionFoundException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() restoredConnection,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? restoredConnection,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoConnectionFoundException value) noConnection,
    required TResult Function(ConnectionFoundException value)
        restoredConnection,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoConnectionFoundException value)? noConnection,
    TResult Function(ConnectionFoundException value)? restoredConnection,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class NoConnectionFoundException implements InternetException {
  const factory NoConnectionFoundException() = _$NoConnectionFoundException;
}

/// @nodoc
abstract class $ConnectionFoundExceptionCopyWith<$Res> {
  factory $ConnectionFoundExceptionCopyWith(ConnectionFoundException value,
          $Res Function(ConnectionFoundException) then) =
      _$ConnectionFoundExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionFoundExceptionCopyWithImpl<$Res>
    extends _$InternetExceptionCopyWithImpl<$Res>
    implements $ConnectionFoundExceptionCopyWith<$Res> {
  _$ConnectionFoundExceptionCopyWithImpl(ConnectionFoundException _value,
      $Res Function(ConnectionFoundException) _then)
      : super(_value, (v) => _then(v as ConnectionFoundException));

  @override
  ConnectionFoundException get _value =>
      super._value as ConnectionFoundException;
}

/// @nodoc

class _$ConnectionFoundException implements ConnectionFoundException {
  const _$ConnectionFoundException();

  @override
  String toString() {
    return 'InternetException.restoredConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConnectionFoundException);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noConnection,
    required TResult Function() restoredConnection,
  }) {
    return restoredConnection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noConnection,
    TResult Function()? restoredConnection,
    required TResult orElse(),
  }) {
    if (restoredConnection != null) {
      return restoredConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoConnectionFoundException value) noConnection,
    required TResult Function(ConnectionFoundException value)
        restoredConnection,
  }) {
    return restoredConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoConnectionFoundException value)? noConnection,
    TResult Function(ConnectionFoundException value)? restoredConnection,
    required TResult orElse(),
  }) {
    if (restoredConnection != null) {
      return restoredConnection(this);
    }
    return orElse();
  }
}

abstract class ConnectionFoundException implements InternetException {
  const factory ConnectionFoundException() = _$ConnectionFoundException;
}

/// @nodoc
class _$DataChangeTearOff {
  const _$DataChangeTearOff();

  DataWillChange dataChange() {
    return const DataWillChange();
  }
}

/// @nodoc
const $DataChange = _$DataChangeTearOff();

/// @nodoc
mixin _$DataChange {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataWillChange value) dataChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataWillChange value)? dataChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataChangeCopyWith<$Res> {
  factory $DataChangeCopyWith(
          DataChange value, $Res Function(DataChange) then) =
      _$DataChangeCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataChangeCopyWithImpl<$Res> implements $DataChangeCopyWith<$Res> {
  _$DataChangeCopyWithImpl(this._value, this._then);

  final DataChange _value;
  // ignore: unused_field
  final $Res Function(DataChange) _then;
}

/// @nodoc
abstract class $DataWillChangeCopyWith<$Res> {
  factory $DataWillChangeCopyWith(
          DataWillChange value, $Res Function(DataWillChange) then) =
      _$DataWillChangeCopyWithImpl<$Res>;
}

/// @nodoc
class _$DataWillChangeCopyWithImpl<$Res> extends _$DataChangeCopyWithImpl<$Res>
    implements $DataWillChangeCopyWith<$Res> {
  _$DataWillChangeCopyWithImpl(
      DataWillChange _value, $Res Function(DataWillChange) _then)
      : super(_value, (v) => _then(v as DataWillChange));

  @override
  DataWillChange get _value => super._value as DataWillChange;
}

/// @nodoc

class _$DataWillChange implements DataWillChange {
  const _$DataWillChange();

  @override
  String toString() {
    return 'DataChange.dataChange()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataWillChange);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() dataChange,
  }) {
    return dataChange();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? dataChange,
    required TResult orElse(),
  }) {
    if (dataChange != null) {
      return dataChange();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataWillChange value) dataChange,
  }) {
    return dataChange(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataWillChange value)? dataChange,
    required TResult orElse(),
  }) {
    if (dataChange != null) {
      return dataChange(this);
    }
    return orElse();
  }
}

abstract class DataWillChange implements DataChange {
  const factory DataWillChange() = _$DataWillChange;
}

/// @nodoc
class _$ValueIsValidTearOff {
  const _$ValueIsValidTearOff();

  ValidValue valueIsValid() {
    return const ValidValue();
  }
}

/// @nodoc
const $ValueIsValid = _$ValueIsValidTearOff();

/// @nodoc
mixin _$ValueIsValid {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() valueIsValid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? valueIsValid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidValue value) valueIsValid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidValue value)? valueIsValid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueIsValidCopyWith<$Res> {
  factory $ValueIsValidCopyWith(
          ValueIsValid value, $Res Function(ValueIsValid) then) =
      _$ValueIsValidCopyWithImpl<$Res>;
}

/// @nodoc
class _$ValueIsValidCopyWithImpl<$Res> implements $ValueIsValidCopyWith<$Res> {
  _$ValueIsValidCopyWithImpl(this._value, this._then);

  final ValueIsValid _value;
  // ignore: unused_field
  final $Res Function(ValueIsValid) _then;
}

/// @nodoc
abstract class $ValidValueCopyWith<$Res> {
  factory $ValidValueCopyWith(
          ValidValue value, $Res Function(ValidValue) then) =
      _$ValidValueCopyWithImpl<$Res>;
}

/// @nodoc
class _$ValidValueCopyWithImpl<$Res> extends _$ValueIsValidCopyWithImpl<$Res>
    implements $ValidValueCopyWith<$Res> {
  _$ValidValueCopyWithImpl(ValidValue _value, $Res Function(ValidValue) _then)
      : super(_value, (v) => _then(v as ValidValue));

  @override
  ValidValue get _value => super._value as ValidValue;
}

/// @nodoc

class _$ValidValue implements ValidValue {
  const _$ValidValue();

  @override
  String toString() {
    return 'ValueIsValid.valueIsValid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ValidValue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() valueIsValid,
  }) {
    return valueIsValid();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? valueIsValid,
    required TResult orElse(),
  }) {
    if (valueIsValid != null) {
      return valueIsValid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidValue value) valueIsValid,
  }) {
    return valueIsValid(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidValue value)? valueIsValid,
    required TResult orElse(),
  }) {
    if (valueIsValid != null) {
      return valueIsValid(this);
    }
    return orElse();
  }
}

abstract class ValidValue implements ValueIsValid {
  const factory ValidValue() = _$ValidValue;
}
