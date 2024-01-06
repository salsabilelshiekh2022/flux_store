import 'package:flutter/material.dart';

import '../../../utils/assets.dart';
import '../../../utils/routes.dart';
import '../../widgets/start_button.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppAssets.welcomeAsset,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Opacity(
            opacity: 0.3,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black,
            ),
          ),
          Column(
            children: [
              const Spacer(
                flex: 8,
              ),
              Text(
                'Welcome to Fluxstore!',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'The home for fashionista',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.white),
              ),
              const Spacer(
                flex: 1,
              ),
              StartButton(
                width: 200,
                label: 'Get Started',
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.onBoardingPageRoute);
                },
              ),
              const Spacer(
                flex: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
