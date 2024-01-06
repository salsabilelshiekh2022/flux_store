import 'package:flutter/material.dart';
import 'package:flutter_margin_widget/flutter_margin_widget.dart';
import 'package:flux_store_for_course/constants.dart';
import 'package:flux_store_for_course/utils/assets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/routes.dart';
import '../../widgets/start_button.dart';
import 'components/onboarding_item.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    List<OnBoardingModel> onBoardingData = [
      OnBoardingModel('Discover something new',
          'Special new arrivals just for you', AppAssets.onBoarding2),
      OnBoardingModel('Update trendy outfit',
          'Favorite brands and hottest trends', AppAssets.onBoarding2),
      OnBoardingModel('Explore your true style',
          'Relax and let us bring the style to you', AppAssets.onBoarding2),
    ];

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 461,
                color: Colors.white,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 351,
                  color: kOnBoardingColor,
                ),
              ),
            ],
          ),
          Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemBuilder: (context, index) {
                    return OnBoardingItem(
                      model: onBoardingData[index],
                    );
                  },
                  controller: controller,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 3,
                ),
              ),
              SmoothPageIndicator(
                  controller: controller, // PageController
                  count: onBoardingData.length,
                  effect: const WormEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      paintStyle: PaintingStyle.stroke,
                      activeDotColor: Colors.white), // your preferred effect
                  onDotClicked: (index) {}),
              const SizedBox(
                height: 28,
              ),
              Margin(
                margin: const EdgeInsets.only(bottom: 110),
                child: StartButton(
                  width: 223,
                  label: 'Shopping now',
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      AppRoutes.loginPageRoute,
                      (route) => false,
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OnBoardingModel {
  final String title;
  final String subTitle;
  final String image;

  OnBoardingModel(this.title, this.subTitle, this.image);
}
