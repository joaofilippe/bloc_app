import 'package:bloc_app/data/network/users.network.dart';

void main() async {
  final users = await UserNetwork().getUsers();
  print(users);
}
