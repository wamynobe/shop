// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Unauthenticated _$UnauthenticatedFromJson(Map<String, dynamic> json) =>
    _Unauthenticated($type: json['runtimeType'] as String?);

Map<String, dynamic> _$UnauthenticatedToJson(_Unauthenticated instance) =>
    <String, dynamic>{'runtimeType': instance.$type};

_Authenticated _$AuthenticatedFromJson(Map<String, dynamic> json) =>
    _Authenticated(
      UserLocalModel.fromJson(json['user'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$AuthenticatedToJson(_Authenticated instance) =>
    <String, dynamic>{'user': instance.user, 'runtimeType': instance.$type};
