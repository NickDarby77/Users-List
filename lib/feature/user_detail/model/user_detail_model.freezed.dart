// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserDetailModel _$UserDetailModelFromJson(Map<String, dynamic> json) {
  return _UserDetailModel.fromJson(json);
}

/// @nodoc
mixin _$UserDetailModel {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'company')
  String? get company => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'login')
  String get login => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailModelCopyWith<UserDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailModelCopyWith<$Res> {
  factory $UserDetailModelCopyWith(
          UserDetailModel value, $Res Function(UserDetailModel) then) =
      _$UserDetailModelCopyWithImpl<$Res, UserDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'company') String? company,
      @JsonKey(name: 'location') String? location,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'login') String login});
}

/// @nodoc
class _$UserDetailModelCopyWithImpl<$Res, $Val extends UserDetailModel>
    implements $UserDetailModelCopyWith<$Res> {
  _$UserDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? company = freezed,
    Object? location = freezed,
    Object? avatarUrl = freezed,
    Object? id = null,
    Object? login = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailModelImplCopyWith<$Res>
    implements $UserDetailModelCopyWith<$Res> {
  factory _$$UserDetailModelImplCopyWith(_$UserDetailModelImpl value,
          $Res Function(_$UserDetailModelImpl) then) =
      __$$UserDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'company') String? company,
      @JsonKey(name: 'location') String? location,
      @JsonKey(name: 'avatar_url') String? avatarUrl,
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'login') String login});
}

/// @nodoc
class __$$UserDetailModelImplCopyWithImpl<$Res>
    extends _$UserDetailModelCopyWithImpl<$Res, _$UserDetailModelImpl>
    implements _$$UserDetailModelImplCopyWith<$Res> {
  __$$UserDetailModelImplCopyWithImpl(
      _$UserDetailModelImpl _value, $Res Function(_$UserDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? company = freezed,
    Object? location = freezed,
    Object? avatarUrl = freezed,
    Object? id = null,
    Object? login = null,
  }) {
    return _then(_$UserDetailModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailModelImpl implements _UserDetailModel {
  const _$UserDetailModelImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'company') required this.company,
      @JsonKey(name: 'location') required this.location,
      @JsonKey(name: 'avatar_url') required this.avatarUrl,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'login') required this.login});

  factory _$UserDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailModelImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'company')
  final String? company;
  @override
  @JsonKey(name: 'location')
  final String? location;
  @override
  @JsonKey(name: 'avatar_url')
  final String? avatarUrl;
  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'login')
  final String login;

  @override
  String toString() {
    return 'UserDetailModel(name: $name, company: $company, location: $location, avatarUrl: $avatarUrl, id: $id, login: $login)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.login, login) || other.login == login));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, company, location, avatarUrl, id, login);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailModelImplCopyWith<_$UserDetailModelImpl> get copyWith =>
      __$$UserDetailModelImplCopyWithImpl<_$UserDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailModelImplToJson(
      this,
    );
  }
}

abstract class _UserDetailModel implements UserDetailModel {
  const factory _UserDetailModel(
          {@JsonKey(name: 'name') required final String? name,
          @JsonKey(name: 'company') required final String? company,
          @JsonKey(name: 'location') required final String? location,
          @JsonKey(name: 'avatar_url') required final String? avatarUrl,
          @JsonKey(name: 'id') required final int id,
          @JsonKey(name: 'login') required final String login}) =
      _$UserDetailModelImpl;

  factory _UserDetailModel.fromJson(Map<String, dynamic> json) =
      _$UserDetailModelImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'company')
  String? get company;
  @override
  @JsonKey(name: 'location')
  String? get location;
  @override
  @JsonKey(name: 'avatar_url')
  String? get avatarUrl;
  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'login')
  String get login;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailModelImplCopyWith<_$UserDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
