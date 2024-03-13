part of 'authoration_bloc.dart';

/// States
sealed class AuthState {
  const AuthState._();
}

final class Auth$InitialState extends AuthState {
  const Auth$InitialState() : super._();
}

final class Auth$LoadingState extends AuthState {
  const Auth$LoadingState() : super._();
}

final class Auth$ErrorState extends AuthState {
  const Auth$ErrorState(this.message) : super._();

  final String message;
}

final class Auth$SuccessState extends AuthState {
  const Auth$SuccessState(this.verificationId) : super._();

  final String verificationId;
}

final class Auth$SignInSuccessState extends AuthState {
  const Auth$SignInSuccessState() : super._();
}
