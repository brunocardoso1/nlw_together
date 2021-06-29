import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nlw_together/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:nlw_together/modules/home/home_page.dart';
import 'package:nlw_together/shared/themes/appcolors.dart';

import 'modules/login/login_page.dart';
import 'modules/splash/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  AppWidget(){
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pay flow',
      theme: ThemeData(
          primarySwatch: Colors.orange, primaryColor: AppColors.primary),
      initialRoute: "/splash",
      routes: {
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage(),
        "/splash": (context) => SplashPage(),
        "/barcode_scanner": (context) => BarcodeScannerPage(),
      },
    );
  }
}
