import 'package:flutter/material.dart';

import '../onBoarding_page.dart';

class OnBoardingItem extends StatelessWidget {
  const OnBoardingItem({super.key, required this.model});
  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 90),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            textAlign: TextAlign.center,
            model.title,
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            textAlign: TextAlign.center,
            model.subTitle,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(
            height: 30,
          ),
          Align(
            //alignment: Alignment.centerLeft,
            child: Image.asset(
              model.image,

              //width: 368,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
