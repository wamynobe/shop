// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'welcome_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WelcomeState {

 double get backgroundOpacity; String? get logoAsset; double get logoScale; double get logoOpacity; double get formBottom; double get formOpacity;
/// Create a copy of WelcomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WelcomeStateCopyWith<WelcomeState> get copyWith => _$WelcomeStateCopyWithImpl<WelcomeState>(this as WelcomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WelcomeState&&(identical(other.backgroundOpacity, backgroundOpacity) || other.backgroundOpacity == backgroundOpacity)&&(identical(other.logoAsset, logoAsset) || other.logoAsset == logoAsset)&&(identical(other.logoScale, logoScale) || other.logoScale == logoScale)&&(identical(other.logoOpacity, logoOpacity) || other.logoOpacity == logoOpacity)&&(identical(other.formBottom, formBottom) || other.formBottom == formBottom)&&(identical(other.formOpacity, formOpacity) || other.formOpacity == formOpacity));
}


@override
int get hashCode => Object.hash(runtimeType,backgroundOpacity,logoAsset,logoScale,logoOpacity,formBottom,formOpacity);

@override
String toString() {
  return 'WelcomeState(backgroundOpacity: $backgroundOpacity, logoAsset: $logoAsset, logoScale: $logoScale, logoOpacity: $logoOpacity, formBottom: $formBottom, formOpacity: $formOpacity)';
}


}

/// @nodoc
abstract mixin class $WelcomeStateCopyWith<$Res>  {
  factory $WelcomeStateCopyWith(WelcomeState value, $Res Function(WelcomeState) _then) = _$WelcomeStateCopyWithImpl;
@useResult
$Res call({
 double backgroundOpacity, String? logoAsset, double logoScale, double logoOpacity, double formBottom, double formOpacity
});




}
/// @nodoc
class _$WelcomeStateCopyWithImpl<$Res>
    implements $WelcomeStateCopyWith<$Res> {
  _$WelcomeStateCopyWithImpl(this._self, this._then);

  final WelcomeState _self;
  final $Res Function(WelcomeState) _then;

/// Create a copy of WelcomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? backgroundOpacity = null,Object? logoAsset = freezed,Object? logoScale = null,Object? logoOpacity = null,Object? formBottom = null,Object? formOpacity = null,}) {
  return _then(_self.copyWith(
backgroundOpacity: null == backgroundOpacity ? _self.backgroundOpacity : backgroundOpacity // ignore: cast_nullable_to_non_nullable
as double,logoAsset: freezed == logoAsset ? _self.logoAsset : logoAsset // ignore: cast_nullable_to_non_nullable
as String?,logoScale: null == logoScale ? _self.logoScale : logoScale // ignore: cast_nullable_to_non_nullable
as double,logoOpacity: null == logoOpacity ? _self.logoOpacity : logoOpacity // ignore: cast_nullable_to_non_nullable
as double,formBottom: null == formBottom ? _self.formBottom : formBottom // ignore: cast_nullable_to_non_nullable
as double,formOpacity: null == formOpacity ? _self.formOpacity : formOpacity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [WelcomeState].
extension WelcomeStatePatterns on WelcomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WelcomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WelcomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WelcomeState value)  $default,){
final _that = this;
switch (_that) {
case _WelcomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WelcomeState value)?  $default,){
final _that = this;
switch (_that) {
case _WelcomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double backgroundOpacity,  String? logoAsset,  double logoScale,  double logoOpacity,  double formBottom,  double formOpacity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WelcomeState() when $default != null:
return $default(_that.backgroundOpacity,_that.logoAsset,_that.logoScale,_that.logoOpacity,_that.formBottom,_that.formOpacity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double backgroundOpacity,  String? logoAsset,  double logoScale,  double logoOpacity,  double formBottom,  double formOpacity)  $default,) {final _that = this;
switch (_that) {
case _WelcomeState():
return $default(_that.backgroundOpacity,_that.logoAsset,_that.logoScale,_that.logoOpacity,_that.formBottom,_that.formOpacity);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double backgroundOpacity,  String? logoAsset,  double logoScale,  double logoOpacity,  double formBottom,  double formOpacity)?  $default,) {final _that = this;
switch (_that) {
case _WelcomeState() when $default != null:
return $default(_that.backgroundOpacity,_that.logoAsset,_that.logoScale,_that.logoOpacity,_that.formBottom,_that.formOpacity);case _:
  return null;

}
}

}

/// @nodoc


class _WelcomeState implements WelcomeState {
  const _WelcomeState({this.backgroundOpacity = 0.0, this.logoAsset, this.logoScale = 1.0, this.logoOpacity = 1.0, this.formBottom = -120.0, this.formOpacity = 0.0});
  

@override@JsonKey() final  double backgroundOpacity;
@override final  String? logoAsset;
@override@JsonKey() final  double logoScale;
@override@JsonKey() final  double logoOpacity;
@override@JsonKey() final  double formBottom;
@override@JsonKey() final  double formOpacity;

/// Create a copy of WelcomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WelcomeStateCopyWith<_WelcomeState> get copyWith => __$WelcomeStateCopyWithImpl<_WelcomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WelcomeState&&(identical(other.backgroundOpacity, backgroundOpacity) || other.backgroundOpacity == backgroundOpacity)&&(identical(other.logoAsset, logoAsset) || other.logoAsset == logoAsset)&&(identical(other.logoScale, logoScale) || other.logoScale == logoScale)&&(identical(other.logoOpacity, logoOpacity) || other.logoOpacity == logoOpacity)&&(identical(other.formBottom, formBottom) || other.formBottom == formBottom)&&(identical(other.formOpacity, formOpacity) || other.formOpacity == formOpacity));
}


@override
int get hashCode => Object.hash(runtimeType,backgroundOpacity,logoAsset,logoScale,logoOpacity,formBottom,formOpacity);

@override
String toString() {
  return 'WelcomeState(backgroundOpacity: $backgroundOpacity, logoAsset: $logoAsset, logoScale: $logoScale, logoOpacity: $logoOpacity, formBottom: $formBottom, formOpacity: $formOpacity)';
}


}

/// @nodoc
abstract mixin class _$WelcomeStateCopyWith<$Res> implements $WelcomeStateCopyWith<$Res> {
  factory _$WelcomeStateCopyWith(_WelcomeState value, $Res Function(_WelcomeState) _then) = __$WelcomeStateCopyWithImpl;
@override @useResult
$Res call({
 double backgroundOpacity, String? logoAsset, double logoScale, double logoOpacity, double formBottom, double formOpacity
});




}
/// @nodoc
class __$WelcomeStateCopyWithImpl<$Res>
    implements _$WelcomeStateCopyWith<$Res> {
  __$WelcomeStateCopyWithImpl(this._self, this._then);

  final _WelcomeState _self;
  final $Res Function(_WelcomeState) _then;

/// Create a copy of WelcomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? backgroundOpacity = null,Object? logoAsset = freezed,Object? logoScale = null,Object? logoOpacity = null,Object? formBottom = null,Object? formOpacity = null,}) {
  return _then(_WelcomeState(
backgroundOpacity: null == backgroundOpacity ? _self.backgroundOpacity : backgroundOpacity // ignore: cast_nullable_to_non_nullable
as double,logoAsset: freezed == logoAsset ? _self.logoAsset : logoAsset // ignore: cast_nullable_to_non_nullable
as String?,logoScale: null == logoScale ? _self.logoScale : logoScale // ignore: cast_nullable_to_non_nullable
as double,logoOpacity: null == logoOpacity ? _self.logoOpacity : logoOpacity // ignore: cast_nullable_to_non_nullable
as double,formBottom: null == formBottom ? _self.formBottom : formBottom // ignore: cast_nullable_to_non_nullable
as double,formOpacity: null == formOpacity ? _self.formOpacity : formOpacity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
