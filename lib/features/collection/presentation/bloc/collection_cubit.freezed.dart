// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CollectionState {

 AsyncValue<List<CollectionItem>> get items;
/// Create a copy of CollectionState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CollectionStateCopyWith<CollectionState> get copyWith => _$CollectionStateCopyWithImpl<CollectionState>(this as CollectionState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CollectionState&&(identical(other.items, items) || other.items == items));
}


@override
int get hashCode => Object.hash(runtimeType,items);

@override
String toString() {
  return 'CollectionState(items: $items)';
}


}

/// @nodoc
abstract mixin class $CollectionStateCopyWith<$Res>  {
  factory $CollectionStateCopyWith(CollectionState value, $Res Function(CollectionState) _then) = _$CollectionStateCopyWithImpl;
@useResult
$Res call({
 AsyncValue<List<CollectionItem>> items
});


$AsyncValueCopyWith<List<CollectionItem>, $Res> get items;

}
/// @nodoc
class _$CollectionStateCopyWithImpl<$Res>
    implements $CollectionStateCopyWith<$Res> {
  _$CollectionStateCopyWithImpl(this._self, this._then);

  final CollectionState _self;
  final $Res Function(CollectionState) _then;

/// Create a copy of CollectionState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as AsyncValue<List<CollectionItem>>,
  ));
}
/// Create a copy of CollectionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AsyncValueCopyWith<List<CollectionItem>, $Res> get items {
  
  return $AsyncValueCopyWith<List<CollectionItem>, $Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}


/// Adds pattern-matching-related methods to [CollectionState].
extension CollectionStatePatterns on CollectionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CollectionState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CollectionState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CollectionState value)  $default,){
final _that = this;
switch (_that) {
case _CollectionState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CollectionState value)?  $default,){
final _that = this;
switch (_that) {
case _CollectionState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AsyncValue<List<CollectionItem>> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CollectionState() when $default != null:
return $default(_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AsyncValue<List<CollectionItem>> items)  $default,) {final _that = this;
switch (_that) {
case _CollectionState():
return $default(_that.items);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AsyncValue<List<CollectionItem>> items)?  $default,) {final _that = this;
switch (_that) {
case _CollectionState() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc


class _CollectionState implements CollectionState {
  const _CollectionState({required this.items});
  

@override final  AsyncValue<List<CollectionItem>> items;

/// Create a copy of CollectionState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CollectionStateCopyWith<_CollectionState> get copyWith => __$CollectionStateCopyWithImpl<_CollectionState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CollectionState&&(identical(other.items, items) || other.items == items));
}


@override
int get hashCode => Object.hash(runtimeType,items);

@override
String toString() {
  return 'CollectionState(items: $items)';
}


}

/// @nodoc
abstract mixin class _$CollectionStateCopyWith<$Res> implements $CollectionStateCopyWith<$Res> {
  factory _$CollectionStateCopyWith(_CollectionState value, $Res Function(_CollectionState) _then) = __$CollectionStateCopyWithImpl;
@override @useResult
$Res call({
 AsyncValue<List<CollectionItem>> items
});


@override $AsyncValueCopyWith<List<CollectionItem>, $Res> get items;

}
/// @nodoc
class __$CollectionStateCopyWithImpl<$Res>
    implements _$CollectionStateCopyWith<$Res> {
  __$CollectionStateCopyWithImpl(this._self, this._then);

  final _CollectionState _self;
  final $Res Function(_CollectionState) _then;

/// Create a copy of CollectionState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_CollectionState(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as AsyncValue<List<CollectionItem>>,
  ));
}

/// Create a copy of CollectionState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AsyncValueCopyWith<List<CollectionItem>, $Res> get items {
  
  return $AsyncValueCopyWith<List<CollectionItem>, $Res>(_self.items, (value) {
    return _then(_self.copyWith(items: value));
  });
}
}

// dart format on
