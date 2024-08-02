part of 'users_list_bloc.dart';

sealed class UserEvent {
  const UserEvent();
}

final class GetAllUsersEvent extends UserEvent {
  const GetAllUsersEvent();
}
