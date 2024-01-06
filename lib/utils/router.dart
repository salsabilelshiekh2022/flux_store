import 'package:flutter/material.dart';
import 'package:flux_store_for_course/models/product_model.dart';
import 'package:flux_store_for_course/utils/routes.dart';
import 'package:flux_store_for_course/views/pages/comfirmPassword/comfirm_password_page.dart';
import 'package:flux_store_for_course/views/pages/loginPage/login_page.dart';
import 'package:flux_store_for_course/views/pages/onBoarding/onBoarding_page.dart';
import 'package:flux_store_for_course/views/pages/verificationCode/verification_code_page.dart';

import '../views/pages/bottom_nav_bar.dart/bottom_nav_bar.dart';
import '../views/pages/cart/cart_page.dart';
import '../views/pages/forgetPassword/forget_password_page.dart';
import '../views/pages/home/home_page.dart';
import '../views/pages/product/product_full_page.dart';
import '../views/pages/register/register_page.dart';
import '../views/pages/welcome/welcome_page.dart';

Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.cartPageRoute:
      return MaterialPageRoute(
        builder: (_) => const CartPage(),
        settings: settings,
      );
    case AppRoutes.onBoardingPageRoute:
      return MaterialPageRoute(
        builder: (_) => const OnBoarding(),
        settings: settings,
      );
    case AppRoutes.productFullPageRoute:
      final product = settings.arguments as Product;
      return MaterialPageRoute(
        builder: (_) => ProductFull(
          product: product,
        ),
        settings: settings,
      );
    case AppRoutes.loginPageRoute:
      return MaterialPageRoute(builder: (_) => const LoginPage());
    case AppRoutes.registerPageRoute:
      return MaterialPageRoute(builder: (_) => const RegisterPage());
    case AppRoutes.forgetPasswordPageRoute:
      return MaterialPageRoute(builder: (_) => const ForgetPasswordPage());
    case AppRoutes.verificationCodePageRoute:
      return MaterialPageRoute(builder: (_) => const VerificationCodePage());
    case AppRoutes.comfirmPasswordPageRoute:
      return MaterialPageRoute(builder: (_) => const ComfirmPassword());
    case AppRoutes.bottomNavBarPageRoute:
      return MaterialPageRoute(builder: (_) => const BottomNavBar());
    case AppRoutes.homePageRoute:
      return MaterialPageRoute(builder: (_) => const HomePage());
    default:
      return MaterialPageRoute(
        builder: (_) => const WelcomeView(),
        settings: settings,
      );
  }
}
