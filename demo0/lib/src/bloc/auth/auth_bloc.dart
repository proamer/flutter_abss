import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:demo0/src/app.dart';
import 'package:demo0/src/constants/network_api.dart';
import 'package:demo0/src/models/user.dart';
import 'package:demo0/src/pages/app_routes.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState()) {

    // Login
    on<AuthEvent_Login>((event, emit) async {
      final String username = event.payload.username;
      final String password = event.payload.password;
      emit(state.copyWith(status: LoginStatus.fetching));
      await Future.delayed(Duration(seconds: 1));

      if (username == 'admin' && password == '1234') {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString(NetworkAPI.token, 'TExkgk0494oksrkf');
        await prefs.setString(NetworkAPI.username, username);
        emit(state.copyWith(status: LoginStatus.success));
      } else {
        emit(state.copyWith(status: LoginStatus.failed));
      }
    });

    // Logout
    on<AuthEvent_Logout>((event, emit) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.clear();
      Navigator.pushReplacementNamed(navigatorState.currentContext!, AppRoute.login);
      // Emit
      emit(state.copyWith(status: LoginStatus.init));
    });
  }
}
