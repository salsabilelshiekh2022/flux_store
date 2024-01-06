import 'package:flutter/material.dart';
import 'package:flux_store_for_course/utils/routes.dart';

import '../../../../constants.dart';
import '../../../../utils/assets.dart';
import '../../../widgets/main_button.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.success),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Your password has been changed',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w100, color: kDarkColor),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Welcome back! Discover now!',
              style: TextStyle(
                  fontSize: 12, fontWeight: FontWeight.w100, color: kDarkColor),
            ),
            const SizedBox(
              height: 20,
            ),
            MainButton(
              text: 'Browe home',
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, AppRoutes.bottomNavBarPageRoute, (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
