import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../bloc/login/login-cubit.dart';
import '../data/repository/onboarding_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //cubit
  sl.registerFactory(() => LoginCubit(sl<OnboardingRepository>()));

  //shared preference
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
}
