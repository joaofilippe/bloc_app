import 'package:bloc_app/data/network/users.network.dart';
import 'package:bloc_app/domain/repositories/user.repository.dart';
import 'package:bloc_app/domain/usecases/get_all_users.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<IUserRepository>(const UserNetwork());
  getIt.registerFactory<GetAllUsersUseCase>(() => GetAllUsersUseCase(repository: getIt<IUserRepository>()));
}
