import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildBanner(),
                _buildForm(),
              ],
            )));
  }

  _buildBanner() {
    return Text("Banner");
  }

  _buildForm() {
    return Container(
      margin: EdgeInsets.only(top:50, left: 32, right: 32),
      child: Text("Form"),
      color: Colors.white,
    );
  }
}
