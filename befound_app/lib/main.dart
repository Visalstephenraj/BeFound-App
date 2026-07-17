import 'package:flutter/material.dart';
import 'ui/auth/login/login_screen.dart';
import 'ui/auth/forgot_password/forgot_password_screen.dart';
import 'ui/auth/otp/otp_verification_screen.dart';
import 'ui/auth/reset_password/create_new_password_screen.dart';
import 'ui/auth/login_success/login_success_screen.dart';
import 'ui/auth/register/create_account_screen.dart';
import 'ui/auth/account_created/account_created_screen.dart';

void main() {
  runApp(const BeFoundApp());
}

class BeFoundApp extends StatelessWidget {
  const BeFoundApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BeFound',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // ✅ Start with Onboarding
      home: const LoginScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/forgot_password': (context) => const ForgotPasswordScreen(),
        '/otp': (context) => const OtpVerificationScreen(),
        '/reset_password': (context) => const CreateNewPasswordScreen(),
        '/login_success': (context) => const LoginSuccessScreen(),
        '/register': (context) => const CreateAccountScreen(),
        '/account_created': (context) => const AccountCreatedScreen(),
        // later add '/home': (context) => const HomeScreen(),
      },
    );
  }
}
