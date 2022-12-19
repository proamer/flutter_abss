import 'package:demox/src/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: _buildAWidget(),
      home: HomePage(),
    );
  }

  _buildAWidget() {
    return Center(child: Column(
      children: [
        Text("OGA1"),
        Text("OGA2"),
      ],
    ));
  }
}

class AWidget extends StatelessWidget {
  const AWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("CodeMobiles");
  }
}
