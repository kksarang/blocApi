import '../local/db/dao/user_dao.dart';
import '../local/db/fireman_db.dart';
import '../local/pref/pref_helper.dart';
import '../model/api/account/account_data.dart';
import '../model/api/account/user_data.dart';
import '../model/api/notifcation/api_data.dart';
import '../resources/onboarding_datasource.dart';
import '../result.dart';
import 'base_repository.dart';

abstract class OnboardingRepository {
  Future<Result<AccountData>> login(String userName, String password);

  Future<Result<ApiData>> sendOtp({String? countryCode, String? phone, String? email, required String method});
  Future<Result<ApiData>> verifyOtp({String? phone, String? email, required String otp, required String method});
  Future<Result<ApiData>> resetPassword(String? phone, String? email, String password);
}

class OnboardingRepositoryImpl with BaseRepository implements OnboardingRepository {
  final PrefHelper _prefHelper;
  final UserDao _userDao;
  final OnboardingDataSource _dataSource;

  OnboardingRepositoryImpl(this._prefHelper, this._userDao, this._dataSource);
  @override
  Future<Result<AccountData>> login(String userName, String password) async {
    Result<AccountData> result = await safeApiCall(() => _dataSource.login(userName, password));
    if (result is Success<AccountData>) {
      // await FirebaseMessaging.instance.subscribeToTopic("AllUsers");
      UserData? user = result.data.user!;
      _userDao.insertOrUpdateUser(User(
        id: user.id,
        name: user.name,
        email: user.email,
        phone: user.phone,
        workaddress: user.workaddress,
      ));
      await _prefHelper.setApiToken("Bearer ${result.data.access_token}");
    }
    return result;
  }

  @override
  Future<Result<ApiData>> resetPassword(String? phone, String? email, String password) =>
      safeApiCall(() => _dataSource.resetPassword(phone, email, password));

  @override
  Future<Result<ApiData>> sendOtp({String? countryCode, String? phone, String? email, required String method}) =>
      safeApiCall(() => _dataSource.sendOtp(countryCode, phone, email, method));

  @override
  Future<Result<ApiData>> verifyOtp({String? phone, String? email, required String otp, required String method}) =>
      safeApiCall(() => _dataSource.verifyOtp(phone, email, otp, method));
}
