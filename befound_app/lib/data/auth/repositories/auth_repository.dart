import '../services/firebase_auth_service.dart';

class AuthRepository {
  final FirebaseAuthService service;
  AuthRepository(this.service);

  Future<bool> login(String email, String password) => service.login(email, password);
  Future<void> sendOtp(String email) => service.sendOtp(email);
  Future<bool> verifyOtp(String otp) => service.verifyOtp(otp);
  Future<void> resetPassword(String newPassword) => service.resetPassword(newPassword);
  Future<bool> register(String name, String email, String password) => service.register(name, email, password);
}
