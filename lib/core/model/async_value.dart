import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'exception/app_exception.dart';

part 'async_value.freezed.dart';

@Freezed(genericArgumentFactories: true)
sealed class AsyncValue<T> with _$AsyncValue<T> {
  const factory AsyncValue.initial() = _Initial<T>;

  const factory AsyncValue.loading() = _Loading<T>;

  const factory AsyncValue.data(T data) = _Data<T>;

  const factory AsyncValue.failure(Exception exception) = _Failure<T>;
}

extension AsyncValueExtension<T> on AsyncValue<T> {
  T? get value => maybeWhen(data: (data) => data, orElse: () => null);

  AppException? get exception => maybeWhen(
    failure: (exception) => exception as AppException?,
    orElse: () => null,
  );

  bool get isLoading => maybeWhen(loading: () => true, orElse: () => false);
}
