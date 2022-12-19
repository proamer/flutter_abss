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
          TextField(
            controller: _usernameController,
              decoration: InputDecoration(labelText: "Username")),
          TextField(
            controller: _passwordController,
              decoration: InputDecoration(labelText: "Password")),
          SizedBox(height: 50,),
          ElevatedButton(onPressed: (){}, child: Text("Login")),
          OutlinedButton(onPressed: (){}, child: Text("Register"))
        ],
      ),
      color: Colors.white,
    );
  }
}
