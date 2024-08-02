import 'dart:async';

import 'package:bloc_app/domain/entities/user.dart';
import 'package:bloc_app/domain/usecases/get_all_users.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'users_list_event.dart';
part 'users_list_state.dart';

class GetAllUsersBloc extends Bloc<GetAllUsersEvent, GetAllUsersState> {
  GetAllUsersBloc({required GetAllUsersUseCase getAllUsersUseCase})
      : _getAllUsersUseCase = getAllUsersUseCase,
        super(const GetAllUsersState()) {
    on<GetAllUsersEvent>(_getAllUsers);
  }

  final GetAllUsersUseCase _getAllUsersUseCase;

  Future<void> _getAllUsers(
    GetAllUsersEvent event,
    Emitter<GetAllUsersState> emit,
  ) async {
    emit(state.copyWith(status: GetAllUsersStatus.getting, users: []));

    final usersList = await _getAllUsersUseCase.execute();

    emit(state.copyWith(
      status: GetAllUsersStatus.sucess,
      users: usersList,
    ));
  }
}
