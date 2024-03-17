import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:user_list/consts/app_consts.dart';
import 'package:user_list/feature/user_list/bloc/user_list_bloc.dart';
import 'package:user_list/models/user_details.model.dart';
import 'package:user_list/models/user_model.dart';
import 'package:user_list/screens/user_details.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub Users'),
      ),
      body: BlocProvider(
        create: (context) => UserListBloc()
          ..add(
            const UserListEvent.fetch(),
          ),
        child: const UsersListContent(),
      ),
    );
  }
}

class UsersListContent extends StatefulWidget {
  const UsersListContent({super.key});

  @override
  State<UsersListContent> createState() => _UsersListContentState();
}

class _UsersListContentState extends State<UsersListContent> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        context.read<UserListBloc>().add(
              const UserListEvent.fetch(),
            );
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _navigateToUserDetails(UserModel user) async {
    final userDetails = await _fetchUserDetails(user.login.toLowerCase());
    if (userDetails != null) {
      Navigator.push(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(
          builder: (context) =>
              UserDetailsScreen(user: user, userDetails: userDetails),
        ),
      );
    } else {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Failed to fetch user details'),
        ),
      );
    }
  }

  Future<UserDetailsModel?> _fetchUserDetails(String username) async {
    final response = await http.get(
      Uri.parse('https://api.github.com/users/$username'),
      headers: {'Authorization': AppConsts.accessToken},
    );
    if (response.statusCode == 200) {
      return UserDetailsModel.fromJson(jsonDecode(response.body));
    } else {
      debugPrint('Failed to fetch user details for $username');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserListBloc, UserListState>(
      builder: (context, state) {
        return ListView.builder(
          controller: _scrollController,
          itemCount: state.users.length + 1,
          itemBuilder: (context, index) {
            if (index < state.users.length) {
              final user = state.users[index];
              return ListTile(
                title: Text(user.login),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(user.avatarUrl),
                ),
                onTap: () => _navigateToUserDetails(user),
              );
            } else if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Text(state.error ?? 'Error');
            }
          },
        );
      },
    );
  }
}
