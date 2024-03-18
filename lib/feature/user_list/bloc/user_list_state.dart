part of 'user_list_bloc.dart';

@freezed
class UserListState with _$UserListState {
  const factory UserListState({
    required List<UserModel> users,
    required int since,
    required int perPage,
    String? error,
    required bool isLoading,
  }) = _UserListState;
}
