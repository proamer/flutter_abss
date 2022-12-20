import 'package:demo0/src/bloc/auth/auth_bloc.dart';
import 'package:demo0/src/pages/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        drawer: CustomDrawer(),
        body: Column(
          children: [
            Text("OGA"),
            ElevatedButton(
              onPressed: () => context.read<AuthBloc>().add(AuthEvent_Logout()),
              child: Text("Back"),
            )
          ],
        ));
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          _buildProfile(),
          ListTile(
            onTap: () => _showDialogBarcode(context),
            title: Text("BarCode"),
            leading: Icon(Icons.bar_chart_outlined, color: Colors.deepOrange),
          ),
          ListTile(
            onTap: () => _showDialogQRImage(context),
            title: Text("QRCode"),
            leading: Icon(Icons.qr_code, color: Colors.green),
          ),
          ListTile(
            onTap: () => _showScanQRCode(context),
            title: Text("Scanner"),
            leading: const Icon(Icons.qr_code_scanner, color: Colors.blueGrey),
          ),
          ListTile(
            onTap: () => Navigator.pushNamed(context, AppRoute.map),
            title: Text("Map"),
            leading: Icon(Icons.map_outlined, color: Colors.blue),
          ),
          Spacer(),
          _buildLogoutButton(),
        ],
      ),
    );
  }

  _buildProfile() {
    return Text("Profile");
  }

  _showDialogBarcode(BuildContext context) {}

  _showDialogQRImage(BuildContext context) {}

  _showScanQRCode(BuildContext context) {}

  _buildLogoutButton() {
    return Text("Logout");
  }
}

