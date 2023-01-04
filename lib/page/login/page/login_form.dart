import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utilites/gradient_button.dart';
import '../../../utilites/progress_button.dart';
import '../../../utilites/styles.dart';
import '../../../utilites/validator.dart';
import '../bloc/login/login-cubit.dart';
import '../data/model/api/account/account_data.dart';
import '../data/result.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _passwordVisible = false;
  GlobalKey<FormState> _userLoginFormKey = GlobalKey();

  bool isSignIn = false;
  bool google = false;

  late LoginCubit _loginCubit;
  final ProgressController _progressController = ProgressController();

  var _usernameController = TextEditingController();
  var _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _invalidUserName = false;
  bool _invalidPassword = false;

  @override
  void didChangeDependencies() {
    _loginCubit = BlocProvider.of<LoginCubit>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Palette.blue,
                Palette.darkRed,
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              color: Palette.white,
              borderRadius: BorderRadius.circular(12),
            ),
            width: MediaQuery.of(context).size.width / 2.5,
            child: BlocListener<LoginCubit, Result<AccountData>>(
              listener: (context, state) {
                _progressController.isLoading = state.maybeWhen(loading: () => true, orElse: () => false);

                state.maybeWhen(
                  loading: () {
                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                  },
                  error: (message) {
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(
                        SnackBar(
                          content: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Expanded(child: Text(message)), Icon(Icons.error)],
                          ),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                  },
                  success: (data, message) {
                    Navigator.of(context).pushNamedAndRemoveUntil('/main', (r) => false);
                  },
                  orElse: () {},
                );
              },
              child: BlocBuilder<LoginCubit, Result<AccountData>>(
                builder: (context, state) {
                  return Form(
                    key: _formKey,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(Dimen.grid_4, Dimen.grid_2, Dimen.grid_4, Dimen.grid_2),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Image.asset('assets/images/img_logo.png'),
                              SizedBox(height: Dimen.grid_3),
                              TextFormField(
                                inputFormatters: [
                                  FilteringTextInputFormatter.deny(RegExp(r'\s')),
                                ],
                                onChanged: (value) {
                                  if (_invalidUserName) _formKey.currentState!.validate();
                                },
                                controller: _usernameController,
                                keyboardType: TextInputType.emailAddress,
                                decoration:
                                    AppTextFieldDecoration.textFieldDecoration.copyWith(labelText: 'Email address'),
                                validator: (value) {
                                  String? err = Validator.validateMail(value);
                                  setState(() {
                                    _invalidUserName = err != null;
                                  });
                                  return err;
                                },
                              ),
                              SizedBox(height: Dimen.grid_2),
                              TextFormField(
                                inputFormatters: [
                                  FilteringTextInputFormatter.deny(RegExp(r'\s')),
                                ],
                                obscureText: !_passwordVisible,
                                controller: _passwordController,
                                onChanged: (value) {
                                  if (_invalidPassword) _formKey.currentState!.validate();
                                },
                                decoration: AppTextFieldDecoration.textFieldDecoration.copyWith(
                                  labelText: 'Password',
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _passwordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                                      color: Palette.black,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                  ),
                                ),
                                validator: (value) {
                                  String? err = Validator.nullValidate(value, 'password');
                                  setState(() {
                                    _invalidPassword = err != null;
                                  });
                                  return err;
                                },
                              ),
                              SizedBox(height: Dimen.grid_2),
                              Align(
                                alignment: Alignment.centerRight,
                                child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushNamed('/forgot-password');
                                  },
                                  child: Text(
                                    'Forgot password?',
                                    style: Theme.of(context).textTheme.bodyText2!.copyWith(color: Palette.blue),
                                  ),
                                ),
                              ),
                              SizedBox(height: Dimen.grid_2),
                              ProgressButton(
                                textColor: Palette.white,
                                progressColor: Palette.white,
                                bgColor: Palette.darkRed,
                                text: 'Sign In',
                                progressText: 'Signing in',
                                progressController: _progressController,
                                onTap: () {
                                  FocusScope.of(context).requestFocus(FocusNode());
                                  if (_formKey.currentState!.validate()) {
                                    String userName = _usernameController.text.toString();
                                    String password = _passwordController.text.toString();
                                    _loginCubit.doLogin(userName, password);
                                  }
                                },
                              ),
                              SizedBox(height: Dimen.grid_2),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Dimen {
  // layout spacing
  static const double grid_0_25 = 2.0;
  static const double grid_0_5 = 4.0;
  static const double grid_1 = 8.0;
  static const double grid_1_5 = 12.0;
  static const double grid_2 = 16.0;
  static const double grid_3 = 24.0;
  static const double grid_4 = 32.0;

  static const double input_control_radius = 8.0;
  static const double grid_radius = 4.0;
}
