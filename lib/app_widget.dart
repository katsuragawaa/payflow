import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'modules/login/login_page.dart';
import 'modules/splash/splash_page.dart';
import 'shared/themes/app_colors.dart';
import 'modules/home/home_page.dart';
import 'modules/barcode_scanner/barcode_scanner_page.dart';
import 'modules/insert_bill/insert_bill_page.dart';

class AppWidget extends StatelessWidget {
  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PayFlow',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: AppColors.primary,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/barcode_scanner': (context) => BarcodeScannerPage(),
        '/insert_bill': (context) => InsertBillPage(),
      },
    );
  }
}
