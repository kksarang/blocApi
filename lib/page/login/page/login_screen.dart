import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utilites/gradient_button.dart';
import '../bloc/login/login-cubit.dart';
import '../di/injection_container.dart' as di;
import 'login_form.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      body: BlocProvider(
        create: (context) => di.sl.get<LoginCubit>(),
        child: LoginForm(),
      ),
    );
  }
}
