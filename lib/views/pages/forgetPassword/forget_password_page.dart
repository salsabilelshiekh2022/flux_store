import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../utils/functions.dart';
import '../../../utils/routes.dart';
import '../../widgets/button_app_bar.dart';
import '../../widgets/main_button.dart';
import '../../widgets/main_text_form_field.dart';
import 'package:email_otp/email_otp.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  String? email;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final EmailOTP _emailOTP = EmailOTP();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 53, left: 32, right: 32),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ButtonAppBar(
                onTap: () {
                  Navigator.pop(context);
                },
                color: kDarkColor,
                icon: Icons.arrow_back_ios_new_rounded,
              ),
              const SizedBox(
                height: 45,
              ),
              const Text(
                'Forgot password? ',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                "Enter email associated with your account and we'll send and email with intructions to reset your password",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100),
              ),
              const SizedBox(
                height: 55,
              ),
              MainTextField(
                keyBoardType: TextInputType.emailAddress,
                onSave: (data) {
                  email = data;
                },
                validator: (value) {
                  return Validator.validateEmail(value);
                },
                textInputAction: TextInputAction.done,
                hintText: 'enter your email here',
                controller: _emailController,
              ),
              const SizedBox(
                height: 100,
              ),
              Align(
                child: MainButton(
                  text: 'SEND OTP',
                  onTap: () async {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      _emailOTP.setConfig(
                          appEmail: "fluxStore@FLUX.com",
                          appName: "Flux Store",
                          userEmail: _emailController.text,
                          otpLength: 5,
                          otpType: OTPType.digitsOnly);
                      if (await _emailOTP.sendOTP() == true) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("OTP has been sent"),
                          ),
                        );
                        Navigator.pushReplacementNamed(
                            context, AppRoutes.verificationCodePageRoute);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Oops, OTP send failed"),
                          ),
                        );
                      }
                    } else {
                      const snackBar = SnackBar(
                        content: Text('Email is not correct!'),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
