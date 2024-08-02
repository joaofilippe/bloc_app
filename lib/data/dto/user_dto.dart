import 'dart:convert';

import 'package:bloc_app/domain/entities/user.dart';

class UserDTO {
  final String id;
  final String name;
  final String avatar;
  final String password;
  final String createdAt;

  const UserDTO({
    required this.id,
    required this.name,
    required this.avatar,
    required this.password,
    required this.createdAt,
  });

  factory UserDTO.fromMap(Map<String, dynamic> map) {
    return UserDTO(
      id: map['id'] as String,
      name: map['name'] as String,
      avatar: map['avatar'] as String,
      password: map['password'] as String,
      createdAt: map['createdAt'] as String,
    );
  }

  factory UserDTO.fromJson(String source) => UserDTO.fromMap(json.decode(source) as Map<String, dynamic>);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'avatar': avatar,
      'password': password,
      'createdAt': createdAt,
    };
  }

  String toJson() => json.encode(toMap());

  User toEntity() {
    return User(
      id: int.parse(id),
      name: name,
      avatar: avatar,
      password: password,
      createdAt: DateTime.parse(createdAt)
    );
  }
}
