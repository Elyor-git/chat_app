part of 'authoration_bloc.dart';

/// Events
sealed class AuthEvent {
  const AuthEvent._();
}

final class Auth$SendSmsCodeEvent extends AuthEvent {
  const Auth$SendSmsCodeEvent(this.phoneNumber) : super._();

  final String phoneNumber;
}

final class Auth$SignInEvent extends AuthEvent {
  const Auth$SignInEvent({
    required this.id,
    required this.smsCode,
  }) : super._();

  final String id;
  final String smsCode;
}
