import 'package:bloc_app/presentation/views/users_view.dart';
import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  const UsersPage({super.key});

  static const routeName = "/users";

  @override
  Widget build(BuildContext context) {
    return const UsersView();
  }
}


