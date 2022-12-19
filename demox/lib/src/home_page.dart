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
            _buildMyText(),
            Text("Lek2", style: TextStyle(fontSize: 30)),
            Text("Lek2", style: TextStyle(fontSize: 30)),
            Text("Lek2", style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }

  _buildMyText() {
    return Text("Lek1", style: TextStyle(fontSize: 30));
  }
}
