// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDetailModelImpl _$$UserDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserDetailModelImpl(
      name: json['name'] as String?,
      company: json['company'] as String?,
      location: json['location'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      id: json['id'] as int,
      login: json['login'] as String,
    );

Map<String, dynamic> _$$UserDetailModelImplToJson(
        _$UserDetailModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'company': instance.company,
      'location': instance.location,
      'avatar_url': instance.avatarUrl,
      'id': instance.id,
      'login': instance.login,
    };
