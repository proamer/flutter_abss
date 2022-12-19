import 'package:demo0/src/constants/asset.dart';
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
  void initState() {
    super.initState();
    _usernameController.text = "admin";
    _passwordController.text = "1234";
  }

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
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Image.asset(Asset.logoImage),
    );
  }

  _buildForm() {
    return Container(
      margin: EdgeInsets.only(top: 50, left: 32, right: 32),
      padding: EdgeInsets.only(top: 10, left: 32, right: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: _usernameController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'codemobiles@gmail.com',
              labelText: 'Username',
              icon: Icon(Icons.email),
            ),
          ),
          TextField(
            obscureText: true,
            controller: _passwordController,
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter password',
              labelText: 'Password',
              icon: Icon(Icons.password_outlined),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(onPressed: _handleLogin, child: Text("Login")),
          OutlinedButton(onPressed: _handleRegister, child: Text("Register")),
          SizedBox(height: 30),
        ],
      ),
      color: Colors.white,
    );
  }

  void _handleLogin() {

  }

  void _handleRegister() {}

  void _debugDlg(){
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
            child: SizedBox(
              height: 300,
              child: Column(
                children: [Text("Debug"), Text("Username: ${_usernameController.text}"), Text("Password: ${_passwordController.text}")],
              ),
            ));
      },
    );
  }
}
