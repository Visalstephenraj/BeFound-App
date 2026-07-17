import 'package:flutter/material.dart';
import 'widgets/success_icon.dart';
import 'widgets/success_message.dart';
import 'widgets/security_box.dart';
import 'widgets/continue_button.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              SizedBox(height: 60),
              SuccessIcon(),       // ✅ green circle + checkmark + confetti
              SizedBox(height: 20),
              SuccessMessage(),    // ✅ "Login Successful!" + welcome text
              SizedBox(height: 30),
              SecurityBox(),       // ✅ shield icon + secure message
              SizedBox(height: 40),
              ContinueButton(),    // ✅ purple button
            ],
          ),
        ),
      ),
    );
  }
}
