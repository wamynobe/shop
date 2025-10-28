// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Result<E,S> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Result<E, S>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'Result<$E, $S>()';
}


}

/// @nodoc
class $ResultCopyWith<E,S,$Res>  {
$ResultCopyWith(Result<E, S> _, $Res Function(Result<E, S>) __);
}


/// Adds pattern-matching-related methods to [Result].
extension ResultPatterns<E,S> on Result<E, S> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Failure<E, S> value)?  failure,TResult Function( _Success<E, S> value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Failure() when failure != null:
return failure(_that);case _Success() when success != null:
return success(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Failure<E, S> value)  failure,required TResult Function( _Success<E, S> value)  success,}){
final _that = this;
switch (_that) {
case _Failure():
return failure(_that);case _Success():
return success(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Failure<E, S> value)?  failure,TResult? Function( _Success<E, S> value)?  success,}){
final _that = this;
switch (_that) {
case _Failure() when failure != null:
return failure(_that);case _Success() when success != null:
return success(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( E exception)?  failure,TResult Function( S data)?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Failure() when failure != null:
return failure(_that.exception);case _Success() when success != null:
return success(_that.data);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( E exception)  failure,required TResult Function( S data)  success,}) {final _that = this;
switch (_that) {
case _Failure():
return failure(_that.exception);case _Success():
return success(_that.data);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( E exception)?  failure,TResult? Function( S data)?  success,}) {final _that = this;
switch (_that) {
case _Failure() when failure != null:
return failure(_that.exception);case _Success() when success != null:
return success(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class _Failure<E,S> implements Result<E, S> {
  const _Failure(this.exception);
  

 final  E exception;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<E, S, _Failure<E, S>> get copyWith => __$FailureCopyWithImpl<E, S, _Failure<E, S>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure<E, S>&&const DeepCollectionEquality().equals(other.exception, exception));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(exception));

@override
String toString() {
  return 'Result<$E, $S>.failure(exception: $exception)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<E,S,$Res> implements $ResultCopyWith<E, S, $Res> {
  factory _$FailureCopyWith(_Failure<E, S> value, $Res Function(_Failure<E, S>) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 E exception
});




}
/// @nodoc
class __$FailureCopyWithImpl<E,S,$Res>
    implements _$FailureCopyWith<E, S, $Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure<E, S> _self;
  final $Res Function(_Failure<E, S>) _then;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? exception = freezed,}) {
  return _then(_Failure<E, S>(
freezed == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as E,
  ));
}


}

/// @nodoc


class _Success<E,S> implements Result<E, S> {
  const _Success(this.data);
  

 final  S data;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SuccessCopyWith<E, S, _Success<E, S>> get copyWith => __$SuccessCopyWithImpl<E, S, _Success<E, S>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success<E, S>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'Result<$E, $S>.success(data: $data)';
}


}

/// @nodoc
abstract mixin class _$SuccessCopyWith<E,S,$Res> implements $ResultCopyWith<E, S, $Res> {
  factory _$SuccessCopyWith(_Success<E, S> value, $Res Function(_Success<E, S>) _then) = __$SuccessCopyWithImpl;
@useResult
$Res call({
 S data
});




}
/// @nodoc
class __$SuccessCopyWithImpl<E,S,$Res>
    implements _$SuccessCopyWith<E, S, $Res> {
  __$SuccessCopyWithImpl(this._self, this._then);

  final _Success<E, S> _self;
  final $Res Function(_Success<E, S>) _then;

/// Create a copy of Result
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_Success<E, S>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as S,
  ));
}


}

// dart format on
