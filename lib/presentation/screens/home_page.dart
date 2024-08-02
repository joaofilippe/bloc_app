import 'package:bloc_app/presentation/screens/users_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const routeName = "/";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: Center(
        child: TextButton(
          child: const Text("Users Page"),
          onPressed: () {
            Navigator.pushReplacementNamed(
              context,
              UsersPage.routeName,
            );
          },
        ),
      ),
    );
  }
}
