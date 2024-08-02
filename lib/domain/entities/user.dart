// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int _id;
  final String _name;
  final String _password;
  final String _avatar;
  final DateTime _createdAt;

  const User({
    required int id,
    required String name,
    required String password,
    required String avatar,
    required DateTime createdAt,
  })  : _id = id,
        _name = name,
        _password = password,
        _avatar = avatar,
        _createdAt = createdAt;

  factory User.empty() {
    return User(
      id: 0,
      name: "",
      password: "",
      avatar: "",
      createdAt: DateTime.parse("1000-00-00 00:00:00"),
    );
  }

  String get name => _name;

  @override
  List<Object?> get props => [_id, _name];
}
