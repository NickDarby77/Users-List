import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_list/feature/user_list/bloc/user_list_bloc.dart';
import 'package:user_list/feature/user_detail/page/user_detail_page.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub Users'),
        centerTitle: true,
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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserListBloc, UserListState>(
      builder: (context, state) {
        return state.users.isEmpty
            ? const Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : ListView.builder(
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UserDetailPage(
                              username: user.login,
                            ),
                          ),
                        );
                      },
                    );
                  } else if (state.isLoading) {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
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
