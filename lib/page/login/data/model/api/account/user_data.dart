import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_data.g.dart';

abstract class UserData implements Built<UserData, UserDataBuilder> {
  int get id;
  String get name;
  String get email;
  String? get phone;
  String? get workaddress;
  String? get image;

  UserData._();

  factory UserData([updates(UserDataBuilder b)]) = _$UserData;

  static Serializer<UserData> get serializer => _$userDataSerializer;
}
