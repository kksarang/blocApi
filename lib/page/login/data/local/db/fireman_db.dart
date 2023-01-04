import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';

import '../../model/db/users.dart';
import 'dao/user_dao.dart';

part 'fireman_db.g.dart';

@DriftDatabase(
  tables: [Users],
  daos: [UserDao],
)
class FiremanDb extends _$FiremanDb {
  String path;
  FiremanDb({required this.path}) : super(_openConnection(path));
  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection(String dbPath) {
  return LazyDatabase(() async {
    final file = File(dbPath);
    return NativeDatabase(
      file,
      logStatements: false,
    );
  });
}
