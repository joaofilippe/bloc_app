import 'package:bloc_app/domain/entities/user.dart';

abstract class IUserRepository {
  Future<List<User>> getUsers();
}
