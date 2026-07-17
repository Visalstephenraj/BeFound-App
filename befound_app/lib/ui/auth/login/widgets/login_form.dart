import 'package:flutter/material.dart';
import 'login_button.dart';
import 'forgot_password_button.dart';
import 'create_account_button.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    // ✅ ValueNotifier for password visibility
    final ValueNotifier<bool> obscurePassword = ValueNotifier<bool>(true);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const TextField(
          decoration: InputDecoration(
            labelText: "Email Address",
            prefixIcon: Icon(Icons.email_outlined),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),

        // ✅ Password field with eye toggle
        ValueListenableBuilder<bool>(
          valueListenable: obscurePassword,
          builder: (context, value, child) {
            return TextField(
              obscureText: value,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: const Icon(Icons.lock_outline),
                suffixIcon: IconButton(
                  icon: Icon(
                    value ? Icons.visibility_off : Icons.visibility,
                  ),
                  onPressed: () {
                    obscurePassword.value = !value;
                  },
                ),
                border: const OutlineInputBorder(),
              ),
            );
          },
        ),
        const SizedBox(height: 20),

        const LoginButton(),
        const SizedBox(height: 10),
        const ForgotPasswordButton(),
        const CreateAccountButton(),
      ],
    );
  }
}
