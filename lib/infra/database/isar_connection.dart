import 'package:bloc_app/data/database/models/user_model.dart';
import 'package:bloc_app/infra/database/connection.dart';
import 'package:path_provider/path_provider.dart';

import 'package:isar/isar.dart';

class IsarConnection implements Connection {
  late final _connection;

  @override
  openConnection() async {
    var dir = await getApplicationDocumentsDirectory();
    try {
      final Isar connection = await Isar.open(
        [UserModelSchema],
        directory: dir.path,
      );

      _connection = connection;
    } catch (_) {}
  }
}
