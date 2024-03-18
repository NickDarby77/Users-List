import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:user_list/feature/user_list/page/user_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GitHub Users List',
      home: SafeArea(
        child: FlutterSplashScreen(
          backgroundColor: Colors.white,
          nextScreen: const UserListPage(),
          duration: const Duration(seconds: 3),
          splashScreenBody: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Image.asset(
                'images/github.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
