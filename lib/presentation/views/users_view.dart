import 'package:bloc_app/domain/entities/user.dart';
import 'package:bloc_app/presentation/bloc/users_list/users_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersView extends StatelessWidget {
  const UsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAllUsersBloc, GetAllUsersState>(
      builder: (context, state) {
        var s = state;
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Usuários"),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/');
                    },
                    child: const Text("Home Page")),
                TextButton(
                    onPressed: () {
                      context.read<GetAllUsersBloc>().add(const GetAllUsersEvent());
                    },
                    child: const Text("Atualizar")),
                s.users.isEmpty
                    ? Container()
                    : Expanded(
                      child: ListView.builder(
                        itemCount: s.users.length,
                        itemBuilder: (context, index) {
                          User user = s.users[index];
                      
                          return ListTile(
                            title: Text(user.name),
                          );
                        }),
                    ),
              ],
            ),
          ),
        );
      },
    );
  }
}
