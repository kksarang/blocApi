// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_datasource.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$OnboardingDataSource extends OnboardingDataSource {
  _$OnboardingDataSource([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = OnboardingDataSource;

  @override
  Future<Response<ApiData>> sendOtp(
      String? countryCode, String? phone, String? email, String method) {
    final $url = '/auth/send-otp';
    final $params = <String, dynamic>{'method': method};
    final $body = <String, dynamic>{
      'country_code': countryCode,
      'phone': phone,
      'email': email
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, parameters: $params);
    return client.send<ApiData, ApiData>($request);
  }

  @override
  Future<Response<ApiData>> verifyOtp(
      String? phone, String? email, String otp, String method) {
    final $url = '/auth/verify-otp';
    final $params = <String, dynamic>{'method': method};
    final $body = <String, dynamic>{
      'phone': phone,
      'email': email,
      'verification_code': otp
    };
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, parameters: $params);
    return client.send<ApiData, ApiData>($request);
  }

  @override
  Future<Response<AccountData>> login(String username, String password) {
    final $url = '/onboarding/login';
    final $body = <String, dynamic>{'username': username, 'password': password};
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<AccountData, AccountData>($request);
  }

  @override
  Future<Response<ApiData>> resetPassword(
      String? phoneNo, String? email, String password) {
    final $url = '/auth/reset-password';
    final $body = <String, dynamic>{
      'phone': phoneNo,
      'email': email,
      'password': password
    };
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<ApiData, ApiData>($request);
  }
}
