// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserDetailEvent {
  String get username => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserDetailEvent value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserDetailEvent value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserDetailEvent value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailEventCopyWith<UserDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailEventCopyWith<$Res> {
  factory $UserDetailEventCopyWith(
          UserDetailEvent value, $Res Function(UserDetailEvent) then) =
      _$UserDetailEventCopyWithImpl<$Res, UserDetailEvent>;
  @useResult
  $Res call({String username});
}

/// @nodoc
class _$UserDetailEventCopyWithImpl<$Res, $Val extends UserDetailEvent>
    implements $UserDetailEventCopyWith<$Res> {
  _$UserDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchUserDetailEventImplCopyWith<$Res>
    implements $UserDetailEventCopyWith<$Res> {
  factory _$$FetchUserDetailEventImplCopyWith(_$FetchUserDetailEventImpl value,
          $Res Function(_$FetchUserDetailEventImpl) then) =
      __$$FetchUserDetailEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username});
}

/// @nodoc
class __$$FetchUserDetailEventImplCopyWithImpl<$Res>
    extends _$UserDetailEventCopyWithImpl<$Res, _$FetchUserDetailEventImpl>
    implements _$$FetchUserDetailEventImplCopyWith<$Res> {
  __$$FetchUserDetailEventImplCopyWithImpl(_$FetchUserDetailEventImpl _value,
      $Res Function(_$FetchUserDetailEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
  }) {
    return _then(_$FetchUserDetailEventImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchUserDetailEventImpl implements _FetchUserDetailEvent {
  const _$FetchUserDetailEventImpl({required this.username});

  @override
  final String username;

  @override
  String toString() {
    return 'UserDetailEvent.fetch(username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchUserDetailEventImpl &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchUserDetailEventImplCopyWith<_$FetchUserDetailEventImpl>
      get copyWith =>
          __$$FetchUserDetailEventImplCopyWithImpl<_$FetchUserDetailEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) fetch,
  }) {
    return fetch(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String username)? fetch,
  }) {
    return fetch?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchUserDetailEvent value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchUserDetailEvent value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchUserDetailEvent value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _FetchUserDetailEvent implements UserDetailEvent {
  const factory _FetchUserDetailEvent({required final String username}) =
      _$FetchUserDetailEventImpl;

  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$FetchUserDetailEventImplCopyWith<_$FetchUserDetailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(UserDetailModel user, String username) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(UserDetailModel user, String username)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(UserDetailModel user, String username)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleUserDetailState value) idle,
    required TResult Function(_LoadingUserDetailState value) loading,
    required TResult Function(_LoadedUserDetailState value) loaded,
    required TResult Function(_ErrorUserDetailState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleUserDetailState value)? idle,
    TResult? Function(_LoadingUserDetailState value)? loading,
    TResult? Function(_LoadedUserDetailState value)? loaded,
    TResult? Function(_ErrorUserDetailState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleUserDetailState value)? idle,
    TResult Function(_LoadingUserDetailState value)? loading,
    TResult Function(_LoadedUserDetailState value)? loaded,
    TResult Function(_ErrorUserDetailState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailStateCopyWith<$Res> {
  factory $UserDetailStateCopyWith(
          UserDetailState value, $Res Function(UserDetailState) then) =
      _$UserDetailStateCopyWithImpl<$Res, UserDetailState>;
}

/// @nodoc
class _$UserDetailStateCopyWithImpl<$Res, $Val extends UserDetailState>
    implements $UserDetailStateCopyWith<$Res> {
  _$UserDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$IdleUserDetailStateImplCopyWith<$Res> {
  factory _$$IdleUserDetailStateImplCopyWith(_$IdleUserDetailStateImpl value,
          $Res Function(_$IdleUserDetailStateImpl) then) =
      __$$IdleUserDetailStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleUserDetailStateImplCopyWithImpl<$Res>
    extends _$UserDetailStateCopyWithImpl<$Res, _$IdleUserDetailStateImpl>
    implements _$$IdleUserDetailStateImplCopyWith<$Res> {
  __$$IdleUserDetailStateImplCopyWithImpl(_$IdleUserDetailStateImpl _value,
      $Res Function(_$IdleUserDetailStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IdleUserDetailStateImpl implements _IdleUserDetailState {
  const _$IdleUserDetailStateImpl();

  @override
  String toString() {
    return 'UserDetailState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleUserDetailStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(UserDetailModel user, String username) loaded,
    required TResult Function(String error) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(UserDetailModel user, String username)? loaded,
    TResult? Function(String error)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(UserDetailModel user, String username)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleUserDetailState value) idle,
    required TResult Function(_LoadingUserDetailState value) loading,
    required TResult Function(_LoadedUserDetailState value) loaded,
    required TResult Function(_ErrorUserDetailState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleUserDetailState value)? idle,
    TResult? Function(_LoadingUserDetailState value)? loading,
    TResult? Function(_LoadedUserDetailState value)? loaded,
    TResult? Function(_ErrorUserDetailState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleUserDetailState value)? idle,
    TResult Function(_LoadingUserDetailState value)? loading,
    TResult Function(_LoadedUserDetailState value)? loaded,
    TResult Function(_ErrorUserDetailState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _IdleUserDetailState implements UserDetailState {
  const factory _IdleUserDetailState() = _$IdleUserDetailStateImpl;
}

/// @nodoc
abstract class _$$LoadingUserDetailStateImplCopyWith<$Res> {
  factory _$$LoadingUserDetailStateImplCopyWith(
          _$LoadingUserDetailStateImpl value,
          $Res Function(_$LoadingUserDetailStateImpl) then) =
      __$$LoadingUserDetailStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingUserDetailStateImplCopyWithImpl<$Res>
    extends _$UserDetailStateCopyWithImpl<$Res, _$LoadingUserDetailStateImpl>
    implements _$$LoadingUserDetailStateImplCopyWith<$Res> {
  __$$LoadingUserDetailStateImplCopyWithImpl(
      _$LoadingUserDetailStateImpl _value,
      $Res Function(_$LoadingUserDetailStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingUserDetailStateImpl implements _LoadingUserDetailState {
  const _$LoadingUserDetailStateImpl();

  @override
  String toString() {
    return 'UserDetailState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingUserDetailStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(UserDetailModel user, String username) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(UserDetailModel user, String username)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(UserDetailModel user, String username)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleUserDetailState value) idle,
    required TResult Function(_LoadingUserDetailState value) loading,
    required TResult Function(_LoadedUserDetailState value) loaded,
    required TResult Function(_ErrorUserDetailState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleUserDetailState value)? idle,
    TResult? Function(_LoadingUserDetailState value)? loading,
    TResult? Function(_LoadedUserDetailState value)? loaded,
    TResult? Function(_ErrorUserDetailState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleUserDetailState value)? idle,
    TResult Function(_LoadingUserDetailState value)? loading,
    TResult Function(_LoadedUserDetailState value)? loaded,
    TResult Function(_ErrorUserDetailState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingUserDetailState implements UserDetailState {
  const factory _LoadingUserDetailState() = _$LoadingUserDetailStateImpl;
}

/// @nodoc
abstract class _$$LoadedUserDetailStateImplCopyWith<$Res> {
  factory _$$LoadedUserDetailStateImplCopyWith(
          _$LoadedUserDetailStateImpl value,
          $Res Function(_$LoadedUserDetailStateImpl) then) =
      __$$LoadedUserDetailStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserDetailModel user, String username});

  $UserDetailModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoadedUserDetailStateImplCopyWithImpl<$Res>
    extends _$UserDetailStateCopyWithImpl<$Res, _$LoadedUserDetailStateImpl>
    implements _$$LoadedUserDetailStateImplCopyWith<$Res> {
  __$$LoadedUserDetailStateImplCopyWithImpl(_$LoadedUserDetailStateImpl _value,
      $Res Function(_$LoadedUserDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? username = null,
  }) {
    return _then(_$LoadedUserDetailStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDetailModel,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDetailModelCopyWith<$Res> get user {
    return $UserDetailModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$LoadedUserDetailStateImpl implements _LoadedUserDetailState {
  const _$LoadedUserDetailStateImpl(
      {required this.user, required this.username});

  @override
  final UserDetailModel user;
  @override
  final String username;

  @override
  String toString() {
    return 'UserDetailState.loaded(user: $user, username: $username)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedUserDetailStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedUserDetailStateImplCopyWith<_$LoadedUserDetailStateImpl>
      get copyWith => __$$LoadedUserDetailStateImplCopyWithImpl<
          _$LoadedUserDetailStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(UserDetailModel user, String username) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(user, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(UserDetailModel user, String username)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(user, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(UserDetailModel user, String username)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleUserDetailState value) idle,
    required TResult Function(_LoadingUserDetailState value) loading,
    required TResult Function(_LoadedUserDetailState value) loaded,
    required TResult Function(_ErrorUserDetailState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleUserDetailState value)? idle,
    TResult? Function(_LoadingUserDetailState value)? loading,
    TResult? Function(_LoadedUserDetailState value)? loaded,
    TResult? Function(_ErrorUserDetailState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleUserDetailState value)? idle,
    TResult Function(_LoadingUserDetailState value)? loading,
    TResult Function(_LoadedUserDetailState value)? loaded,
    TResult Function(_ErrorUserDetailState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _LoadedUserDetailState implements UserDetailState {
  const factory _LoadedUserDetailState(
      {required final UserDetailModel user,
      required final String username}) = _$LoadedUserDetailStateImpl;

  UserDetailModel get user;
  String get username;
  @JsonKey(ignore: true)
  _$$LoadedUserDetailStateImplCopyWith<_$LoadedUserDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorUserDetailStateImplCopyWith<$Res> {
  factory _$$ErrorUserDetailStateImplCopyWith(_$ErrorUserDetailStateImpl value,
          $Res Function(_$ErrorUserDetailStateImpl) then) =
      __$$ErrorUserDetailStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorUserDetailStateImplCopyWithImpl<$Res>
    extends _$UserDetailStateCopyWithImpl<$Res, _$ErrorUserDetailStateImpl>
    implements _$$ErrorUserDetailStateImplCopyWith<$Res> {
  __$$ErrorUserDetailStateImplCopyWithImpl(_$ErrorUserDetailStateImpl _value,
      $Res Function(_$ErrorUserDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorUserDetailStateImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorUserDetailStateImpl implements _ErrorUserDetailState {
  const _$ErrorUserDetailStateImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'UserDetailState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorUserDetailStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorUserDetailStateImplCopyWith<_$ErrorUserDetailStateImpl>
      get copyWith =>
          __$$ErrorUserDetailStateImplCopyWithImpl<_$ErrorUserDetailStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(UserDetailModel user, String username) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(UserDetailModel user, String username)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(UserDetailModel user, String username)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IdleUserDetailState value) idle,
    required TResult Function(_LoadingUserDetailState value) loading,
    required TResult Function(_LoadedUserDetailState value) loaded,
    required TResult Function(_ErrorUserDetailState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IdleUserDetailState value)? idle,
    TResult? Function(_LoadingUserDetailState value)? loading,
    TResult? Function(_LoadedUserDetailState value)? loaded,
    TResult? Function(_ErrorUserDetailState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IdleUserDetailState value)? idle,
    TResult Function(_LoadingUserDetailState value)? loading,
    TResult Function(_LoadedUserDetailState value)? loaded,
    TResult Function(_ErrorUserDetailState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorUserDetailState implements UserDetailState {
  const factory _ErrorUserDetailState({required final String error}) =
      _$ErrorUserDetailStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorUserDetailStateImplCopyWith<_$ErrorUserDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
