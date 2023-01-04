import 'package:drift/drift.dart';

class Users extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text()();
  TextColumn get email => text()();
  TextColumn get phone => text().nullable()();
  TextColumn get workaddress => text().nullable()();
  TextColumn get image => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

