part of 'auth_bloc.dart';

enum LoginStatus { fetching, success, failed, init }

class AuthState extends Equatable {
  final LoginStatus status;
  final String dialogMessage;

  const AuthState();


  @override
  List<Object> get props => [];
}
