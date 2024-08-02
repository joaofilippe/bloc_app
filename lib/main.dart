// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:bloc_app/core/dependency_injection.dart';
import 'package:bloc_app/domain/usecases/get_all_users.dart';
import 'package:bloc_app/presentation/bloc/users_list/users_list_bloc.dart';
import 'package:bloc_app/presentation/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

void main() {
  setup();
  final getIt = GetIt.instance;
  runApp(BlocMultiProvider(getAllUsersUseCase: getIt<GetAllUsersUseCase>()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  get generateRoute => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc-App Demo',
      theme: ThemeData.dark(),
      home: const HomePage(),
      onGenerateRoute: generateRoute,
    );
  }
}

class BlocMultiProvider extends StatelessWidget {
  const BlocMultiProvider({super.key, required this.getAllUsersUseCase});

  final GetAllUsersUseCase getAllUsersUseCase;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => GetAllUsersBloc(getAllUsersUseCase: getAllUsersUseCase),
      child: const MyApp(),
    );
  }
}
