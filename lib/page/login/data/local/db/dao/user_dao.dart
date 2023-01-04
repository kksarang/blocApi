import 'package:drift/drift.dart';

import '../../../model/db/users.dart';
import '../fireman_db.dart';

part 'user_dao.g.dart';

@DriftAccessor(
  tables: [Users],
)
class UserDao extends DatabaseAccessor<FiremanDb> with _$UserDaoMixin {
  final FiremanDb db;

  UserDao(this.db) : super(db);

  Stream<User> watchUser() {
    return (select(users)..limit(1)).watchSingle();
  }

  Future<User?> loggedUser() {
    return (select(users)..limit(1)).getSingleOrNull();
  }

  Future updateUser(User user) => update(users).replace(user);

  Future<void> insertOrUpdateUser(Insertable<User> user) async {
    User? usr = await select(users).getSingleOrNull();
    if (usr == null)
      await into(users).insert(user);
    else
      await update(users).replace(user);
  }

  Future<int> clearUserData() => delete(users).go();
}
