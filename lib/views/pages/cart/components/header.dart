import 'package:flutter/material.dart';
import 'package:flux_store_for_course/constants.dart';

import '../../../widgets/button_app_bar.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 45, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonAppBar(
            color: kDarkColor,
            icon: Icons.arrow_back_ios_new_rounded,
          ),
          Text(
            'Your Cart',
            style: TextStyle(color: kDarkColor, fontSize: 18),
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }
}
