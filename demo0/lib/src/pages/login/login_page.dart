import 'package:demo0/src/bloc/auth/auth_bloc.dart';
import 'package:demo0/src/bloc/counter/counter_bloc.dart';
import 'package:demo0/src/constants/asset.dart';
import 'package:demo0/src/models/user.dart';
import 'package:demo0/src/pages/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    print("Whole refresh");
    return Scaffold(
        body: Container(
            width: double.infinity,
            height: double.infinity,
            // color: Colors.black,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildBanner(),
                  _buildForm(),
                  _buildCounter(),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            )));
  }

  _buildBanner() {
    return Padding(
      padding: const EdgeInsets.only(top: 90.0),
      child: Image.asset(Asset.logoImage),
    );
  }

  _buildForm() {
    return Card(
      elevation: 7,
      margin: EdgeInsets.only(top: 50, left: 32, right: 32),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
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
            SizedBox(height: 10),
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                if (state.status == LoginStatus.failed) {
                  return Text(
                    "Login failed",
                    style: TextStyle(color: Colors.red),
                  );
                } else if (state.status == LoginStatus.fetching) {
                  return Text(
                    "Logging in..",
                    style: TextStyle(color: Colors.red),
                  );
                } else {
                  return SizedBox();
                }
              },
            ),
            SizedBox(height: 30),
            ElevatedButton(onPressed: _handleLogin, child: Text("Login")),
            OutlinedButton(onPressed: _handleRegister, child: Text("Register")),
          ],
        ),
      ),
      color: Colors.white,
    );
  }

  void _handleLogin() {
    final user = User(
      _usernameController.text,
      _passwordController.text,
    );
    context.read<AuthBloc>().add(AuthEvent_Login(user));
  }

  void _handleRegister() {}

  void _debugDlg() {
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

  _buildCounter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {
              context.read<CounterBloc>().add(CounterEvent_Add());
            },
            icon: Icon(Icons.add)),
        BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Text(state.counter.toString(), style: TextStyle(fontSize: 30));
          },
        ),
        IconButton(
            onPressed: () {
              context.read<CounterBloc>().add(CounterEvent_Remove());
            },
            icon: Icon(Icons.remove)),
      ],
    );
  }
}
