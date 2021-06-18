import 'package:freezed_annotation/freezed_annotation.dart';

part 'exceptions.freezed.dart';

abstract class AppExceptions with Exception {}

@freezed
class RequestException extends AppExceptions with _$RequestException {
  const factory RequestException.requestFailure() = RequestFailure;
  const factory RequestException.cityNotFound() = CityNotFoundFailure;
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
    } else {
      return 'Unhandled error ocurred, try again';
    }
  }
}
