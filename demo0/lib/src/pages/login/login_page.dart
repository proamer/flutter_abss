import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

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
      height: 300,
      margin: EdgeInsets.only(top: 50, left: 32, right: 32),
      padding: EdgeInsets.only(top: 10, left: 32, right: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(controller: _usernameController, decoration: InputDecoration(labelText: "Username")),
          TextField(controller: _passwordController, decoration: InputDecoration(labelText: "Password")),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(onPressed: _handleLogin, child: Text("Login")),
          OutlinedButton(onPressed: _handleRegister, child: Text("Register"))
        ],
      ),
      color: Colors.white,
    );
  }

  void _handleLogin() {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(child: SizedBox(
          height: 300,
          child: Column(
            children: [
              Text("Debug"),
              Text("Username: ${_usernameController.text}"),
              Text("Password: ${_passwordController.text}")
            ],
          ),
        ));
      },
    );
  }

  void _handleRegister() {}
}
