import 'package:freezed_annotation/freezed_annotation.dart';

import 'app_exception.dart';

part 'remote_exception.freezed.dart';

@freezed
class RemoteException extends AppException with _$RemoteException {
  const factory RemoteException.other({
    dynamic code,
    @Default('') String message,
  }) = _Other;

  const factory RemoteException.networkUnavailable() = _NetworkUnavailable;

  const factory RemoteException.unauthorized() = _Unauthorized;

  const RemoteException._();

  @override
  AppExceptionType get type => AppExceptionType.remote;

  @override
  String toString() => when(
        other: (code, String message) => message,
        networkUnavailable: () => 'network unavailable',
        unauthorized: () => 'unauthorized',
      );
}
