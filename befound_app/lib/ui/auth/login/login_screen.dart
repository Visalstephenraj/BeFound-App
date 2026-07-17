import 'package:flutter/material.dart';
import 'widgets/login_logo.dart';
import 'widgets/login_form.dart';
import 'widgets/image_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 60),
            LoginLogo(),   // logo + app name + tagline
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.all(16),
              child: LoginForm(), // email + password + buttons
            ),
            SizedBox(height: 30),
            // ✅ Bottom illustration
            ImageWidget(),
          ],
        ),
      ),
    );
  }
}
