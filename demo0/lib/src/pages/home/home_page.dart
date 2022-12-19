import 'package:flutter/material.dart';

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
              onPressed: () => Navigator.pop(context),
              child: Text("Back"),
            )
          ],
        ));
  }
}
