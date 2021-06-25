import 'package:flutter/material.dart';
import 'package:nlw_together/modules/home/home_page.dart';
import 'package:nlw_together/shared/themes/appcolors.dart';
import 'modules/login/login_page.dart';
import 'modules/splash/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay flow',
      theme: ThemeData(primaryColor: AppColors.primary),
      initialRoute: "/splash",
      routes: {
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/splash": (context) => SplashPage(),
      },
    );
  }
}
