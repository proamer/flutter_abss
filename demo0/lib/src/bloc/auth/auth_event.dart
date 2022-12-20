part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class AuthEvent_Login extends AuthEvent {
  final User payload;

  AuthEvent_Login(this.payload);
}

class AuthEvent_Register extends AuthEvent {}
class AuthEvent_Logout extends AuthEvent {}
