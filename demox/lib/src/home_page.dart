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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildMyText("Lek1", Colors.red),
            _buildMyText("Lek2", Colors.yellow),
            _buildMyText("Lek3", Colors.purple),
          ],
        ),
      ),
    );
  }

  _buildMyText(String value, Color color) {
    return Container(
        color: color,
        child: Text(value, style: TextStyle(fontSize: 30)));
  }
}
