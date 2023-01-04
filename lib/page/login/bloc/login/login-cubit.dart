import 'package:bloc/bloc.dart';

import '../../data/model/api/account/account_data.dart';
import '../../data/repository/onboarding_repository.dart';
import '../../data/result.dart';

class LoginCubit extends Cubit<Result<AccountData>> {
  final OnboardingRepository _onboardingRepository;
  LoginCubit(this._onboardingRepository) : super(Result.initial());

  //do login
  Future doLogin(String userName, String password) async {
    emit(Result.loading());
    Result<AccountData> result = await _onboardingRepository.login(userName, password);
    emit(result);
  }
}
