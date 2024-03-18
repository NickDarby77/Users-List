part of 'user_detail_bloc.dart';

@freezed
class UserDetailState with _$UserDetailState {
  const factory UserDetailState.idle() = _IdleUserDetailState;

  const factory UserDetailState.loading() = _LoadingUserDetailState;

  const factory UserDetailState.loaded({
    required UserDetailModel user,
    required String username,
  }) = _LoadedUserDetailState;

  const factory UserDetailState.error({
    required String error,
  }) = _ErrorUserDetailState;
}
