// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CollectionDetailState {

 AsyncValue<CollectionItemDetail> get detail;
/// Create a copy of CollectionDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollectionDetailStateCopyWith<CollectionDetailState> get copyWith => _$CollectionDetailStateCopyWithImpl<CollectionDetailState>(this as CollectionDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CollectionDetailState&&(identical(other.detail, detail) || other.detail == detail));
}


@override
int get hashCode => Object.hash(runtimeType,detail);

@override
String toString() {
  return 'CollectionDetailState(detail: $detail)';
}


}

/// @nodoc
abstract mixin class $CollectionDetailStateCopyWith<$Res>  {
  factory $CollectionDetailStateCopyWith(CollectionDetailState value, $Res Function(CollectionDetailState) _then) = _$CollectionDetailStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<CollectionItemDetail> detail
});


$AsyncValueCopyWith<CollectionItemDetail, $Res> get detail;

}
/// @nodoc
class _$CollectionDetailStateCopyWithImpl<$Res>
    implements $CollectionDetailStateCopyWith<$Res> {
  _$CollectionDetailStateCopyWithImpl(this._self, this._then);

  final CollectionDetailState _self;
  final $Res Function(CollectionDetailState) _then;

/// Create a copy of CollectionDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? detail = null,}) {
  return _then(_self.copyWith(
detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as AsyncValue<CollectionItemDetail>,
  ));
}
/// Create a copy of CollectionDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AsyncValueCopyWith<CollectionItemDetail, $Res> get detail {
  
  return $AsyncValueCopyWith<CollectionItemDetail, $Res>(_self.detail, (value) {
    return _then(_self.copyWith(detail: value));
  });
}
}


/// Adds pattern-matching-related methods to [CollectionDetailState].
extension CollectionDetailStatePatterns on CollectionDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CollectionDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CollectionDetailState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CollectionDetailState value)  $default,){
final _that = this;
switch (_that) {
case _CollectionDetailState():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CollectionDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _CollectionDetailState() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<CollectionItemDetail> detail)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CollectionDetailState() when $default != null:
return $default(_that.detail);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<CollectionItemDetail> detail)  $default,) {final _that = this;
switch (_that) {
case _CollectionDetailState():
return $default(_that.detail);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<CollectionItemDetail> detail)?  $default,) {final _that = this;
switch (_that) {
case _CollectionDetailState() when $default != null:
return $default(_that.detail);case _:
  return null;

}
}

}

/// @nodoc


class _CollectionDetailState implements CollectionDetailState {
  const _CollectionDetailState({required this.detail});
  

@override final  AsyncValue<CollectionItemDetail> detail;

/// Create a copy of CollectionDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CollectionDetailStateCopyWith<_CollectionDetailState> get copyWith => __$CollectionDetailStateCopyWithImpl<_CollectionDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CollectionDetailState&&(identical(other.detail, detail) || other.detail == detail));
}


@override
int get hashCode => Object.hash(runtimeType,detail);

@override
String toString() {
  return 'CollectionDetailState(detail: $detail)';
}


}

/// @nodoc
abstract mixin class _$CollectionDetailStateCopyWith<$Res> implements $CollectionDetailStateCopyWith<$Res> {
  factory _$CollectionDetailStateCopyWith(_CollectionDetailState value, $Res Function(_CollectionDetailState) _then) = __$CollectionDetailStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<CollectionItemDetail> detail
});


@override $AsyncValueCopyWith<CollectionItemDetail, $Res> get detail;

}
/// @nodoc
class __$CollectionDetailStateCopyWithImpl<$Res>
    implements _$CollectionDetailStateCopyWith<$Res> {
  __$CollectionDetailStateCopyWithImpl(this._self, this._then);

  final _CollectionDetailState _self;
  final $Res Function(_CollectionDetailState) _then;

/// Create a copy of CollectionDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? detail = null,}) {
  return _then(_CollectionDetailState(
detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as AsyncValue<CollectionItemDetail>,
  ));
}

/// Create a copy of CollectionDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AsyncValueCopyWith<CollectionItemDetail, $Res> get detail {
  
  return $AsyncValueCopyWith<CollectionItemDetail, $Res>(_self.detail, (value) {
    return _then(_self.copyWith(detail: value));
  });
}
}

// dart format on
