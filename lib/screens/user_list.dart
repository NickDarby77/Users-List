import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:user_list/consts/app_consts.dart';
import 'package:user_list/models/user_details.model.dart';
import 'package:user_list/models/user_model.dart';
import 'package:user_list/screens/user_details.dart';

class UsersListScreen extends StatefulWidget {
  const UsersListScreen({super.key});

  @override
  State<UsersListScreen> createState() => _UsersListScreenState();
}

class _UsersListScreenState extends State<UsersListScreen> {
  final List<UserModel> _users = [];
  bool _isLoading = false;
  int _since = 0;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _fetchUsers();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _fetchUsers();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _fetchUsers() async {
    if (_isLoading) return;
    setState(() {
      _isLoading = true;
    });
    final response = await http.get(
      Uri.parse('https://api.github.com/users?per_page=30&since=$_since'),
      headers: {'Authorization': AppConsts.accessToken},
    );
    if (response.statusCode == 200) {
      final List<dynamic> userList = jsonDecode(response.body);
      setState(() {
        _users.addAll(
          userList.map((user) => UserModel.fromJson(user)).toList(),
        );
        _isLoading = false;
        if (userList.isNotEmpty) {
          _since = _users.last.id;
        }
      });
    } else {
      setState(() {
        _isLoading = false;
      });
      debugPrint('Failed to load users');
    }
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub Users'),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: _users.length + 1,
        itemBuilder: (context, index) {
          if (index < _users.length) {
            final user = _users[index];
            return ListTile(
              title: Text(user.login),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(user.avatarUrl),
              ),
              onTap: () => _navigateToUserDetails(user),
            );
          } else if (_isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return const SizedBox(height: 80);
          }
        },
      ),
    );
  }
}
