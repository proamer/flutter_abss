import 'dart:js';

import 'package:flutter/material.dart';
import 'pages.dart';

class AppRoute {
  static const home = 'home';
  static const login = 'login';

  static get all => <String, WidgetBuilder>{
    login: (context) => const LoginPage(),
    home: (context) => const HomePage()
  };
}
