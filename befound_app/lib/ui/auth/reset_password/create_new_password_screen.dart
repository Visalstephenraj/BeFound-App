import 'package:flutter/material.dart';
import 'widgets/icon_header.dart';
import 'widgets/password_textfield.dart';
import 'widgets/confirm_password_textfield.dart';
import 'widgets/password_rules.dart';
import 'widgets/update_button.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Reset Password")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: const [
              SizedBox(height: 20),
              IconHeader(),                // ✅ top image + title
              SizedBox(height: 30),
              PasswordTextField(),         // ✅ new password field
              SizedBox(height: 20),
              ConfirmPasswordTextField(),  // ✅ confirm password field
              SizedBox(height: 20),
              PasswordRules(),             // ✅ rules list
              SizedBox(height: 30),
              UpdateButton(),              // ✅ gradient button with navigation
            ],
          ),
        ),
      ),
    );
  }
}
