import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:user_list/consts/app_consts.dart';
import 'package:user_list/feature/user_detail/model/user_detail_model.dart';
import 'package:http/http.dart' as http;
part 'user_detail_event.dart';
part 'user_detail_state.dart';
part 'user_detail_bloc.freezed.dart';

class UserDetailBloc extends Bloc<UserDetailEvent, UserDetailState> {
  UserDetailBloc() : super(const UserDetailState.idle()) {
    on<_FetchUserDetailEvent>(_fetch);
  }

  Future<void> _fetch(
    _FetchUserDetailEvent event,
    Emitter<UserDetailState> emit,
  ) async {
    if (state is _LoadingUserDetailState) return;

    emit(const UserDetailState.loading());
    final username = event.username.toLowerCase();
    final response = await http.get(
      Uri.parse('https://api.github.com/users/$username'),
      headers: {
        'Authorization': AppConsts.accessToken
      }, // use here the given github access token
    );
    if (response.statusCode == 200) {
      final userDetail = UserDetailModel.fromJson(
        jsonDecode(response.body),
      );
      emit(
        UserDetailState.loaded(user: userDetail, username: username),
      );
    } else {
      emit(
        const UserDetailState.error(error: 'Failed to fetch user detail'),
      );
    }
  }
}
