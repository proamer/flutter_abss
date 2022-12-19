import 'package:demo0/src/pages/app_routes.dart';
import 'package:demo0/src/pages/pages.dart';
import 'package:flutter/material.dart';

class CMApp extends StatelessWidget {
  const CMApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CMApp",
      home: LoginPage(),
      routes: AppRoute.all,
    );
  }
}
