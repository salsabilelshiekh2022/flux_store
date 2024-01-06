import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flux_store_for_course/utils/assets.dart';

import '../../../models/product_model.dart';
import '../../widgets/app_app_bar.dart';
import '../../widgets/app_header.dart';
import '../../widgets/product_item.dart';
import 'components/home_banner.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 28),
            child: Column(
              children: [
                const AppAppBar(
                  lastIcon: Icons.notifications_none_rounded,
                  leadingIcon: Icons.menu,
                  title: 'Fluxstore',
                ),
                const SizedBox(
                  height: 36,
                ),
                SvgPicture.asset(AppAssets.categories),
                const SizedBox(
                  height: 30,
                ),
                const HomeBanner(),
                const SizedBox(
                  height: 26,
                ),
                const AppHeader(
                  title: 'Feature Products',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ProductItem(product: dummyFeatureProduct[index]);
                      },
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Image.asset(AppAssets.newCollection),
                const SizedBox(
                  height: 36,
                ),
                const AppHeader(
                  title: 'Recommended',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32),
                  child: SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ProductItem(product: dummyFeatureProduct[index]);
                      },
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                const AppHeader(
                  title: 'Top Collection',
                ),
                const SizedBox(
                  height: 36,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Column(
                    children: [
                      Image.asset(AppAssets.topCollection1),
                      Image.asset(AppAssets.topCollection2),
                      Row(
                        children: [
                          Image.asset(
                            AppAssets.topCollection3,
                            width: 140,
                            height: 194,
                          ),
                          Image.asset(
                            AppAssets.topCollection4,
                            width: 140,
                            height: 194,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
