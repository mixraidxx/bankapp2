import 'package:bankapp2/Views/AccountDetailView.dart';
import 'package:bankapp2/Views/MainView.dart';
import 'package:flutter/material.dart';

import 'Brand/Theme.dart';
import 'Views/LoginView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cvv Dinamico',
      theme: BrandTheme.appTheme,
      home: LoginView(),
      routes: {
        MainView.routeName: (context) => MainView(),
        AccountDetailView.routeName: (context) => AccountDetailView()
      },
    );
  }
}
