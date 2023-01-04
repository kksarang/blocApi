import 'package:shared_preferences/shared_preferences.dart';

abstract class PrefHelper {
  bool notifVisibilityStatus();
  Future<void> setNotifStatus(bool status);

  int lastNotificationId();
  Future<void> setLastNotificationId(int id);
  List<String> subscribedTopics();
  Future<void> setTopics(String topic);

  Future<String?> accessToken();
  String? apiToken();
  Future<void> setApiToken(String token);

  bool getIsFirstTime();
  Future<void> setIsFirstTime(bool status);

  void clearData();
}

const NOTIF_STATUS = 'NOTIF_STATUS';
const LAST_NOTIFICATIONID = 'LAST_NOTIFICATIONID';
const SUBSCRIBED_TOPICS = 'SUBSCRIBED_TOPICS';
const API_TOKEN = 'API_TOKEN';
const IS_FIRST_TIME = 'IS_FIRST_TIME';

class PrefHelperImpl implements PrefHelper {
  final SharedPreferences sharedPreferences;

  PrefHelperImpl(this.sharedPreferences);

  @override
  bool notifVisibilityStatus() {
    if (sharedPreferences.containsKey(NOTIF_STATUS))
      return sharedPreferences.getBool(NOTIF_STATUS) ?? false;
    else
      return false;
  }

  @override
  Future<void> setNotifStatus(bool status) {
    return sharedPreferences.setBool(
      NOTIF_STATUS,
      status,
    );
  }

  @override
  int lastNotificationId() {
    final int? lastId = sharedPreferences.getInt(LAST_NOTIFICATIONID);
    if (lastId != null) {
      return lastId;
    } else {
      return 0;
    }
  }

  @override
  Future<void> setLastNotificationId(int id) {
    return sharedPreferences.setInt(
      LAST_NOTIFICATIONID,
      id,
    );
  }

  @override
  Future<void> setTopics(String topic) {
    List<String> currentTopics = subscribedTopics();
    currentTopics.add(topic);
    return sharedPreferences.setStringList(
      SUBSCRIBED_TOPICS,
      currentTopics,
    );
  }

  @override
  List<String> subscribedTopics() {
    try {
      final topics = sharedPreferences.getStringList(SUBSCRIBED_TOPICS);
      if (topics != null) {
        return topics;
      } else {
        return [];
      }
    } catch (_) {
      return [];
    }
  }

  @override
  String? apiToken() {
    try {
      final token = sharedPreferences.getString(API_TOKEN);
      return token;
    } catch (_) {
      return null;
    }
  }

  @override
  Future<void> setApiToken(String token) {
    return sharedPreferences.setString(
      API_TOKEN,
      token,
    );
  }

  @override
  bool getIsFirstTime() => sharedPreferences.getBool(IS_FIRST_TIME) ?? false;

  @override
  Future<void> setIsFirstTime(bool status) {
    return sharedPreferences.setBool(IS_FIRST_TIME, status);
  }

  @override
  void clearData() {
    sharedPreferences.clear();
  }

  @override
  Future<String?> accessToken() {
    try {
      final token = sharedPreferences.getString(API_TOKEN);
      return Future.value(token);
    } catch (_) {
      return Future.value(null);
      ;
    }
  }
}
