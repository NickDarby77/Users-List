import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:user_list/feature/user_detail/bloc/user_detail_bloc.dart';

class UserDetailPage extends StatelessWidget {
  const UserDetailPage({super.key, required this.username});

  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => UserDetailBloc()
          ..add(
            UserDetailEvent.fetch(username: username),
          ),
        child: const UserDetailContent(),
      ),
    );
  }
}

class UserDetailContent extends StatelessWidget {
  const UserDetailContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailBloc, UserDetailState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (value) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(value.user.avatarUrl ?? ''),
                  radius: 50,
                ),
                const SizedBox(height: 20),
                Text(
                  value.user.login,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                if (value.user.name?.isNotEmpty ?? false) ...[
                  const SizedBox(height: 10),
                  Text(
                    'Name: ${value.user.name}',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
                if (value.user.company?.isNotEmpty ?? false) ...[
                  const SizedBox(height: 10),
                  Text(
                    'Company: ${value.user.company}',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
                if (value.user.location?.isNotEmpty ?? false) ...[
                  const SizedBox(height: 10),
                  Text(
                    'Location: ${value.user.location}',
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ],
            ),
          ),
          error: (value) => Center(
            child: Text(value.error),
          ),
        );
      },
    );
  }
}
