import 'package:flutter/material.dart';

import '../../../../utils/assets.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(AppAssets.banner),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, right: 10, left: 188),
            child: Text(
              'Autumn Collection 2022',
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}
