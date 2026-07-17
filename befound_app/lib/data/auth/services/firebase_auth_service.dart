class FirebaseAuthService {
  Future<bool> login(String email, String password) async {
    // TODO: Firebase Auth login
    return true;
  }

  Future<void> sendOtp(String email) async {
    // TODO: Firebase send OTP
  }

  Future<bool> verifyOtp(String otp) async {
    // TODO: Firebase verify OTP
    return otp == "123456";
  }

  Future<void> resetPassword(String newPassword) async {
    // TODO: Firebase reset password
  }

  Future<bool> register(String name, String email, String password) async {
    // TODO: Firebase register
    return true;
  }
}
