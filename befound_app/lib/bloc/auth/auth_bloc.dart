import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart'; // relative from lib/
import '../../data/auth/repositories/auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository repository;

  AuthBloc(this.repository) : super(const AuthState()) {
    on<LoginRequested>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final success = await repository.login(event.email, event.password);
      emit(state.copyWith(isLoading: false, isAuthenticated: success));
    });

    on<ForgotPasswordRequested>((event, emit) async {
      await repository.sendOtp(event.email);
    });

    on<OtpVerificationRequested>((event, emit) async {
      final verified = await repository.verifyOtp(event.otp);
      emit(state.copyWith(isAuthenticated: verified));
    });

    on<ResetPasswordRequested>((event, emit) async {
      await repository.resetPassword(event.newPassword);
    });

    on<RegisterRequested>((event, emit) async {
      final created = await repository.register(event.name, event.email, event.password);
      emit(state.copyWith(isAuthenticated: created));
    });
  }
}
