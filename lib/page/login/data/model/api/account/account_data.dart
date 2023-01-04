import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../notifcation/meta.dart';
import 'user_data.dart';

part 'account_data.g.dart';

abstract class AccountData extends Object with Meta implements Built<AccountData, AccountDataBuilder> {
  UserData? get user;
  String? get access_token;

  AccountData._();

  factory AccountData([updates(AccountDataBuilder b)]) = _$AccountData;

  static Serializer<AccountData> get serializer => _$accountDataSerializer;
}
