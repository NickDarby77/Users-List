import 'package:flutter/material.dart';
import 'package:user_list/models/user_details.model.dart';
import 'package:user_list/models/user_model.dart';

class UserDetailsScreen extends StatelessWidget {
  final UserModel user;
  final UserDetailsModel userDetails;

  const UserDetailsScreen({
    super.key,
    required this.user,
    required this.userDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(user.avatarUrl),
              radius: 50,
            ),
            const SizedBox(height: 20),
            Text(
              user.login,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Name: ${userDetails.name}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              'Company: ${userDetails.company}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              'Location: ${userDetails.location}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
