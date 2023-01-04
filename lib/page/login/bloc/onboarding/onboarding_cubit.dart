import 'package:bloc/bloc.dart';

import '../../../../utilites/validator.dart';
import '../../data/model/api/notifcation/api_data.dart';
import '../../data/repository/onboarding_repository.dart';
import '../../data/result.dart';

class OnboardingCubit extends Cubit<Result<ApiData>> {
  final OnboardingRepository _onboardingRepository;
  OnboardingCubit(this._onboardingRepository) : super(Result.initial());

  //send otp register
  Future sendOtp({String? countryCode, String? phone, String? email, String method: 'registration'}) async {
    emit(Result.loading());
    Result<ApiData> result =
        await _onboardingRepository.sendOtp(countryCode: countryCode, phone: phone, email: email, method: method);
    emit(result);
  }

  //veify otp register
  Future verifyOtp(String receiver, String otp, String method) async {
    emit(Result.loading());

    String? phone, email;
    if (Validator.validateMail(receiver) != null)
      phone = receiver;
    else
      email = receiver;

    Result<ApiData> result =
        await _onboardingRepository.verifyOtp(phone: phone, email: email, otp: otp, method: method);
    emit(result);
  }

  //reset password
  Future resetPassword(String userName, String password) async {
    emit(Result.loading());

    String? phone, email;
    if (Validator.validateMail(userName) != null)
      phone = userName;
    else
      email = userName;

    Result<ApiData> result = await _onboardingRepository.resetPassword(phone, email, password);
    emit(result);
  }

  Future<bool> resendOTP(String? countryCode, String? phone, String? email, String type) async {
    Result<ApiData> result =
        await _onboardingRepository.sendOtp(countryCode: countryCode, phone: phone, email: email, method: type);
    if (result is Success) {
      return true;
    } else {
      return false;
    }
  }
}
