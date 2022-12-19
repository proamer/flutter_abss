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
              children: [
                _buildBanner(),
                _buildForm()
              ],
            )));
  }

  _buildBanner() {
    return Text("Banner");
  }

  _buildForm() {
    return Container(child: Text("Form"), height: 300, color: Colors.white,);
  }
}
