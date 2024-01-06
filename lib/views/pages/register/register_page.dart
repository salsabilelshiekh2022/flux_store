import 'package:flutter/material.dart';

import '../../../utils/assets.dart';
import '../../../utils/functions.dart';
import '../../../utils/routes.dart';
import '../../widgets/main_button.dart';
import '../../widgets/main_text_form_field.dart';
import '../../widgets/social_media_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? email, password, name, comfirmPassword;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _nameController = TextEditingController();
  final _nameFocusNode = FocusNode();
  final _comfirmPasswordController = TextEditingController();
  final _comfirmPasswordFocusNode = FocusNode();
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
                        'Create ',
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
                    focusNode: _nameFocusNode,
                    onEditingComplete: () {
                      FocusScope.of(context).requestFocus(_emailFocusNode);
                    },
                    keyBoardType: TextInputType.name,
                    onSave: (data) {
                      name = data;
                    },
                    validator: (value) {
                      return Validator.validateName(value);
                    },
                    textInputAction: TextInputAction.next,
                    hintText: 'Enter Your Name',
                    controller: _nameController,
                  ),
                  const SizedBox(
                    height: 20,
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
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () {
                      FocusScope.of(context)
                          .requestFocus(_comfirmPasswordFocusNode);
                    },
                    onSave: (data) {
                      password = data;
                    },
                    validator: (value) {
                      return Validator.validatePassword(value);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MainTextField(
                      hintText: 'Comfirm password',
                      controller: _comfirmPasswordController,
                      focusNode: _comfirmPasswordFocusNode,
                      keyBoardType: TextInputType.visiblePassword,
                      textInputAction: TextInputAction.done,
                      onSave: (data) {
                        password = data;
                      },
                      validator: (value) {
                        if (value!.isEmpty) return 'Field is required';
                        if (value != _passwordController.text) {
                          return 'Not Match Password';
                        } else {
                          return null;
                        }
                      }),
                  const SizedBox(
                    height: 40,
                  ),
                  Align(
                    child: MainButton(
                      text: 'SIGN UP',
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
                            content: Text('Faild to registertion!'),
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
                      'Or signUp with social account',
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
                    height: 28,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                            fontWeight: FontWeight.w100, fontSize: 12),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, AppRoutes.loginPageRoute);
                        },
                        child: const Text(
                          'Log In',
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
