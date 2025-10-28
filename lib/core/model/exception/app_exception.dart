import 'other_exception.dart';
import 'remote_exception.dart';

abstract class AppException implements Exception {
  const AppException();

  AppExceptionType get type;

  @override
  String toString() {
    try {
      switch (type) {
        case AppExceptionType.remote:
          return (this as RemoteException).toString();
        case AppExceptionType.other:
          return (this as OtherException).message;
      }
    } catch (_) {
      return '';
    }
  }

  RemoteException get asRemoteException => this as RemoteException;

  OtherException get asOtherException => this as OtherException;
}

enum AppExceptionType {
  remote,
  other,
}
