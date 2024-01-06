import 'package:flutter/material.dart';
import 'package:flux_store_for_course/utils/routes.dart';

import '../../../constants.dart';
import '../../widgets/button_app_bar.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class VerificationCodePage extends StatefulWidget {
  const VerificationCodePage({super.key});

  @override
  State<VerificationCodePage> createState() => _VerificationCodePageState();
}

class _VerificationCodePageState extends State<VerificationCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 53, left: 32, right: 32),
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
              'Verification code ',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              "Please enter the verification code we sent to your email address",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w100),
            ),
            const SizedBox(
              height: 55,
            ),
            OtpTextField(
              numberOfFields: 5,
              fieldWidth: 40,
              cursorColor: kDarkColor,
              borderColor: kDarkColor,
              focusedBorderColor: kDarkColor,

              enabledBorderColor: kGreyColor,
              showFieldAsBox: false,

              onSubmit: (String verificationCode) {
                Navigator.pushReplacementNamed(
                    context, AppRoutes.comfirmPasswordPageRoute);
              }, // end onSubmit
            ),
          ],
        ),
      ),
    );
  }
}
