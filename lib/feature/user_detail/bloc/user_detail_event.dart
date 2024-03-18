part of 'user_detail_bloc.dart';

@freezed
class UserDetailEvent with _$UserDetailEvent {
  const factory UserDetailEvent.fetch({required String username}) =
      _FetchUserDetailEvent;
}
