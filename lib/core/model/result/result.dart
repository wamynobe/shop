import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
class Result<E, S> with _$Result<E, S> {
  const factory Result.failure(E exception) = _Failure;

  const factory Result.success(S data) = _Success;
}
