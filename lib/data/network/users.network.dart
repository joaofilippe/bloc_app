import 'package:bloc_app/data/dto/user_dto.dart';
import 'package:bloc_app/domain/entities/user.dart';
import 'package:bloc_app/domain/repositories/user.repository.dart';

import 'package:dio/dio.dart';

class UserNetwork implements IUserRepository {
  const UserNetwork();
  final baseURL = "https://6629554354afcabd0738ffa6.mockapi.io/api/v1";
  @override
  Future<List<User>> getUsers() async {
    final dio = Dio();
    final response = await dio.get("$baseURL/user");

    if (response.data == null || response.data!.isEmpty) {
      return [];
    }

    List<User> users = [];
    for (Map<String, dynamic> r in response.data!) {
      UserDTO userDTO = UserDTO.fromMap(r);
      users.add(userDTO.toEntity());
    }

    return users;
  }
}
