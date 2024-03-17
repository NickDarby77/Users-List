import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_list/consts/app_consts.dart';
import 'package:user_list/models/user_model.dart';
import 'package:http/http.dart' as http;
part 'user_list_event.dart';
part 'user_list_state.dart';
part 'user_list_bloc.freezed.dart';

class UserListBloc extends Bloc<UserListEvent, UserListState> {
  UserListBloc()
      : super(const UserListState(
          users: [],
          perPage: 30,
          since: 0,
          isLoading: false,
        )) {
    on<_FetchUserListEvent>(_fetch);
  }

  Future<void> _fetch(
    _FetchUserListEvent event,
    Emitter<UserListState> emit,
  ) async {
    if (state.isLoading) return;
    emit(state.copyWith(isLoading: true));
    final response = await http.get(
      Uri.parse(
        'https://api.github.com/users?per_page=${state.perPage}&since=${state.since}',
      ),
      headers: {'Authorization': AppConsts.accessToken},
    );
    if (response.statusCode == 200) {
      final List<dynamic> userList = jsonDecode(response.body);

      final parsedUsers =
          userList.map((user) => UserModel.fromJson(user)).toList();

      emit(
        state.copyWith(
          isLoading: false,
          users: [...state.users, ...parsedUsers],
          since: parsedUsers.lastOrNull?.id ?? state.since,
        ),
      );
    } else {
      emit(state.copyWith(
        isLoading: false,
        error: 'Failed to load users',
      ));
    }
  }
}
