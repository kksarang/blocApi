import 'package:chopper/chopper.dart';

import '../../core/utils/network/api_client.dart';
import '../model/api/account/account_data.dart';
import '../model/api/notifcation/api_data.dart';

part 'onboarding_datasource.chopper.dart';

@ChopperApi()
abstract class OnboardingDataSource extends ChopperService {
  @Post(path: '/auth/send-otp')
  Future<Response<ApiData>> sendOtp(
    @Field('country_code') String? countryCode,
    @Field('phone') String? phone,
    @Field('email') String? email,
    @Query('method') String method,
  );

  @Post(path: '/auth/verify-otp')
  Future<Response<ApiData>> verifyOtp(
    @Field('phone') String? phone,
    @Field('email') String? email,
    @Field('verification_code') String otp,
    @Query('method') String method,
  );

  @Post(path: '/onboarding/login')
  Future<Response<AccountData>> login(
    @Field('username') String username,
    @Field('password') String password,
  );

  @Post(path: '/auth/reset-password')
  Future<Response<ApiData>> resetPassword(
    @Field('phone') String? phoneNo,
    @Field('email') String? email,
    @Field('password') String password,
  );

  static OnboardingDataSource create() {
    final client = ApiClient.buildClient(_$OnboardingDataSource());
    return _$OnboardingDataSource(client);
  }
}
