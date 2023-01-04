import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:flutter/foundation.dart';

import 'api/account/account_data.dart';
import 'api/account/user_data.dart';
import 'api/notifcation/api_data.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  ApiData,
  AccountData,
  UserData,
  Category,
])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
