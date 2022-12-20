import 'package:demo0/src/bloc/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HomePage'),
        ),
        body: Column(
          children: [
            Text("OGA"),
            ElevatedButton(
              onPressed: () => context.read<AuthBloc>().add(AuthEvent_Logout()),
              child: Text("Back"),
            )
          ],
        ));
  }
}
