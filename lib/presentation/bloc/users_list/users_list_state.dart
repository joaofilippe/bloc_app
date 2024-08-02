part of 'users_list_bloc.dart';

enum GetAllUsersStatus { initial, getting, sucess, failure }

final class GetAllUsersState extends Equatable{
  const GetAllUsersState({
    this.status = GetAllUsersStatus.initial,
    this.users = const [],
  });

  final GetAllUsersStatus status;
  final List<User> users;

  GetAllUsersState copyWith({
    GetAllUsersStatus? status,
    List<User>? users,
  }) {
    return GetAllUsersState(
      status: status ?? this.status,
      users: users ?? this.users,
    );
  }

  @override
  List<Object?> get props => [status, users];
}
