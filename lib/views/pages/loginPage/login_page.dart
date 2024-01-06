import 'package:flutter/material.dart';
import '../../../utils/assets.dart';
import '../../../utils/functions.dart';
import '../../../utils/routes.dart';
import '../../widgets/main_button.dart';
import '../../widgets/main_text_form_field.dart';
import '../../widgets/social_media_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? email, password;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 80, left: 32, right: 32),
            child: Form(
              key: _formKey,
              autovalidateMode: _autovalidateMode,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Login to ',
                        style: TextStyle(fontSize: 24),
                      ),
                      Text(
                        'your account ',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  MainTextField(
                    focusNode: _emailFocusNode,
                    onEditingComplete: () {
                      FocusScope.of(context).requestFocus(_passwordFocusNode);
                    },
                    keyBoardType: TextInputType.emailAddress,
                    onSave: (data) {
                      email = data;
                    },
                    validator: (value) {
                      return Validator.validateEmail(value);
                    },
                    textInputAction: TextInputAction.next,
                    hintText: 'Email address',
                    controller: _emailController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MainTextField(
                    hintText: 'Password',
                    controller: _passwordController,
                    focusNode: _passwordFocusNode,
                    keyBoardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    onSave: (data) {
                      password = data;
                    },
                    validator: (value) {
                      return Validator.validatePassword(value);
                    },
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRoutes.forgetPasswordPageRoute);
                      },
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w100),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Align(
                    child: MainButton(
                      text: 'LOGIN',
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          Navigator.pushReplacementNamed(
                              context, AppRoutes.bottomNavBarPageRoute);
                        } else {
                          setState(() {
                            _autovalidateMode = AutovalidateMode.always;
                          });
                          const snackBar = SnackBar(
                            content: Text('Faild to login!'),
                          );

                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    child: Text(
                      'Or login with social account',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w100),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialMediaButton(image: AppAssets.faceBookAsset),
                        SizedBox(width: 15),
                        SocialMediaButton(image: AppAssets.googleAsset),
                      ]),
                  const SizedBox(
                    height: 120,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(
                            fontWeight: FontWeight.w100, fontSize: 12),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, AppRoutes.registerPageRoute);
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              fontWeight: FontWeight.w100, fontSize: 12),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
