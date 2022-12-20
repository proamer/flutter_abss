import 'package:demo0/src/bloc/counter/counter_bloc.dart';
import 'package:demo0/src/pages/app_routes.dart';
import 'package:demo0/src/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CMApp extends StatelessWidget {
  const CMApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider(create: (context) => CounterBloc());

    return MultiBlocProvider(
        providers: [counterBloc],
        child: MaterialApp(
          title: "CMApp",
          home: LoginPage(),
          routes: AppRoute.all,
        ));
  }
}
