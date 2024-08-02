import 'package:isar/isar.dart';

part 'user_model.g.dart';

@collection
class UserModel{
  Id id = Isar.autoIncrement;
  String? name;
  String? password;
  String? avatar;
  DateTime? createdAt;

}