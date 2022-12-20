import 'package:demo0/src/bloc/counter/counter_bloc.dart';
import 'package:demo0/src/constants/network_api.dart';
import 'package:demo0/src/pages/app_routes.dart';
import 'package:demo0/src/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'bloc/auth/auth_bloc.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

final formatCurrency = NumberFormat('#,###.000');
final formatNumber = NumberFormat('#,###');
final navigatorState = GlobalKey<NavigatorState>();

final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 1,
    colors: true,
  ),
);

class CMApp extends StatelessWidget {
  const CMApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider(create: (context) => CounterBloc());
    final authBloc = BlocProvider(create: (context) => AuthBloc());

    return MultiBlocProvider(
        providers: [
          counterBloc,
          authBloc,
        ],
        child: MaterialApp(
          title: "CMApp",
          home: _initialPage(),
          routes: AppRoute.all,
          navigatorKey: navigatorState,
        ));
  }

  _initialPage() async {
    return FutureBuilder(
      future: SharedPreferences.getInstance(),
      builder: (context, snapshot) {
        if (snapshot.hasData == false){
          return Text("Loading");
        }else{
          final prefs = snapshot.data!;
          final token = prefs.getString(NetworkAPI.token) ?? "";
          return token.isEmpty ? LoginPage() : HomePage();
        }
      },
    );
  }
}
