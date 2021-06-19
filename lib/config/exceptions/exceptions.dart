import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

abstract class AppExceptions with Exception {}

@freezed
class RequestException extends AppExceptions with _$RequestException {
  const factory RequestException.requestFailure() = RequestFailure;
  const factory RequestException.cityNotFound() = CityNotFoundFailure;
}

@freezed
class HiveException extends AppExceptions with _$HiveException {
  const factory HiveException.noDataFound() = NoDataFoundException;
}

@freezed
class InternetException extends AppExceptions with _$InternetException {
  const factory InternetException.noConnection() = NoConnectionFoundException;
  const factory InternetException.restoredConnection() =
      ConnectionFoundException;
}

@freezed
class ValueIsValid extends AppExceptions with _$ValueIsValid {
  const factory ValueIsValid.valueIsValid() = ValidValue;
}

extension ToString on AppExceptions {
  String getString() {
    if (this is RequestException) {
      return (this as RequestException).when(
        requestFailure: () => 'Request has failed, something went wrong',
        cityNotFound: () => 'City not found, try again',
      );
    } else if (this is HiveException) {
      return (this as HiveException).when(
        noDataFound: () =>
            'Storage empty! Forecasts haven\'t been saved yet!\nWait for fetched Forecast',
      );
    } else if (this is InternetException) {
      return (this as InternetException).when(
        noConnection: () =>
            'No internet connection!\nWaiting for reconnect with last fetched forecast!',
        restoredConnection: () =>
            'Restored connection!\nFetching new forecasts!',
      );
    } else {
      return 'Unhandled error ocurred, try again';
    }
  }
}
