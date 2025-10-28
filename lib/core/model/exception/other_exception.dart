import 'app_exception.dart';

class OtherException extends AppException {
  const OtherException(this.message);

  final String message;

  @override
  AppExceptionType get type => AppExceptionType.other;
}
