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
      appBar: AppBar(title: Text("HomePage")),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.red.shade100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildMyText("Lek1", color: Colors.red),
          ],
        ),
      ),
    );
  }

  _buildMyText(String value, {required Color color}) {
    return Container(
        color: color,
        child: Text(value,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            )));
  }
}
