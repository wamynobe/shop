// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remote_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RemoteException {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoteException);
}


@override
int get hashCode => runtimeType.hashCode;



}

/// @nodoc
class $RemoteExceptionCopyWith<$Res>  {
$RemoteExceptionCopyWith(RemoteException _, $Res Function(RemoteException) __);
}


/// Adds pattern-matching-related methods to [RemoteException].
extension RemoteExceptionPatterns on RemoteException {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Other value)?  other,TResult Function( _NetworkUnavailable value)?  networkUnavailable,TResult Function( _Unauthorized value)?  unauthorized,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Other() when other != null:
return other(_that);case _NetworkUnavailable() when networkUnavailable != null:
return networkUnavailable(_that);case _Unauthorized() when unauthorized != null:
return unauthorized(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Other value)  other,required TResult Function( _NetworkUnavailable value)  networkUnavailable,required TResult Function( _Unauthorized value)  unauthorized,}){
final _that = this;
switch (_that) {
case _Other():
return other(_that);case _NetworkUnavailable():
return networkUnavailable(_that);case _Unauthorized():
return unauthorized(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Other value)?  other,TResult? Function( _NetworkUnavailable value)?  networkUnavailable,TResult? Function( _Unauthorized value)?  unauthorized,}){
final _that = this;
switch (_that) {
case _Other() when other != null:
return other(_that);case _NetworkUnavailable() when networkUnavailable != null:
return networkUnavailable(_that);case _Unauthorized() when unauthorized != null:
return unauthorized(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( dynamic code,  String message)?  other,TResult Function()?  networkUnavailable,TResult Function()?  unauthorized,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Other() when other != null:
return other(_that.code,_that.message);case _NetworkUnavailable() when networkUnavailable != null:
return networkUnavailable();case _Unauthorized() when unauthorized != null:
return unauthorized();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( dynamic code,  String message)  other,required TResult Function()  networkUnavailable,required TResult Function()  unauthorized,}) {final _that = this;
switch (_that) {
case _Other():
return other(_that.code,_that.message);case _NetworkUnavailable():
return networkUnavailable();case _Unauthorized():
return unauthorized();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( dynamic code,  String message)?  other,TResult? Function()?  networkUnavailable,TResult? Function()?  unauthorized,}) {final _that = this;
switch (_that) {
case _Other() when other != null:
return other(_that.code,_that.message);case _NetworkUnavailable() when networkUnavailable != null:
return networkUnavailable();case _Unauthorized() when unauthorized != null:
return unauthorized();case _:
  return null;

}
}

}

/// @nodoc


class _Other extends RemoteException {
  const _Other({this.code, this.message = ''}): super._();
  

 final  dynamic code;
@JsonKey() final  String message;

/// Create a copy of RemoteException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtherCopyWith<_Other> get copyWith => __$OtherCopyWithImpl<_Other>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Other&&const DeepCollectionEquality().equals(other.code, code)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(code),message);



}

/// @nodoc
abstract mixin class _$OtherCopyWith<$Res> implements $RemoteExceptionCopyWith<$Res> {
  factory _$OtherCopyWith(_Other value, $Res Function(_Other) _then) = __$OtherCopyWithImpl;
@useResult
$Res call({
 dynamic code, String message
});




}
/// @nodoc
class __$OtherCopyWithImpl<$Res>
    implements _$OtherCopyWith<$Res> {
  __$OtherCopyWithImpl(this._self, this._then);

  final _Other _self;
  final $Res Function(_Other) _then;

/// Create a copy of RemoteException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? message = null,}) {
  return _then(_Other(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as dynamic,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _NetworkUnavailable extends RemoteException {
  const _NetworkUnavailable(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NetworkUnavailable);
}


@override
int get hashCode => runtimeType.hashCode;



}




/// @nodoc


class _Unauthorized extends RemoteException {
  const _Unauthorized(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unauthorized);
}


@override
int get hashCode => runtimeType.hashCode;



}




// dart format on
