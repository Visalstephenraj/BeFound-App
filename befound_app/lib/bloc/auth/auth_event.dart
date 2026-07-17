import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class LoginRequested extends AuthEvent {
  final String email;
  final String password;
  const LoginRequested(this.email, this.password);

  @override
  List<Object?> get props => [email, password];
}

class ForgotPasswordRequested extends AuthEvent {
  final String email;
  const ForgotPasswordRequested(this.email);

  @override
  List<Object?> get props => [email];
}

class OtpVerificationRequested extends AuthEvent {
  final String otp;
  const OtpVerificationRequested(this.otp);

  @override
  List<Object?> get props => [otp];
}

class ResetPasswordRequested extends AuthEvent {
  final String newPassword;
  const ResetPasswordRequested(this.newPassword);

  @override
  List<Object?> get props => [newPassword];
}

class RegisterRequested extends AuthEvent {
  final String name;
  final String email;
  final String password;
  const RegisterRequested(this.name, this.email, this.password);

  @override
  List<Object?> get props => [name, email, password];
}
