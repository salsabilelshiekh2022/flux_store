import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'utils/router.dart';
import 'utils/routes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.blue, // navigation bar color
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const FluxStore());
}

class FluxStore extends StatelessWidget {
  const FluxStore({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Product Sans',
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flux Store',
      onGenerateRoute: onGenerate,
      initialRoute: AppRoutes.bottomNavBarPageRoute,
    );
  }
}
