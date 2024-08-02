import 'package:bloc_app/domain/entities/user.dart';
import 'package:bloc_app/domain/repositories/user.repository.dart';

class GetAllUsersUseCase {
  final IUserRepository _repository;

  const GetAllUsersUseCase({required IUserRepository repository}) : _repository = repository;

  Future<List<User>> execute() async {
    return await _repository.getUsers();
  }
}
