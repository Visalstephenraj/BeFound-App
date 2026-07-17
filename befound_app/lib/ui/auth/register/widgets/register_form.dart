import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> obscure1 = ValueNotifier(true);
    final ValueNotifier<bool> obscure2 = ValueNotifier(true);

    return Column(
      children: [
        const TextField(
          decoration: InputDecoration(
            labelText: "Full Name",
            prefixIcon: Icon(Icons.person_outline),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        const TextField(
          decoration: InputDecoration(
            labelText: "Email Address",
            prefixIcon: Icon(Icons.email_outlined),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),
        ValueListenableBuilder<bool>(
          valueListenable: obscure1,
          builder: (context, value, child) {
            return TextField(
              obscureText: value,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: const Icon(Icons.lock_outline),
                suffixIcon: IconButton(
                  icon: Icon(value ? Icons.visibility_off : Icons.visibility),
                  onPressed: () => obscure1.value = !value,
                ),
                border: const OutlineInputBorder(),
              ),
            );
          },
        ),
        const SizedBox(height: 20),
        ValueListenableBuilder<bool>(
          valueListenable: obscure2,
          builder: (context, value, child) {
            return TextField(
              obscureText: value,
              decoration: InputDecoration(
                labelText: "Confirm Password",
                prefixIcon: const Icon(Icons.lock_outline),
                suffixIcon: IconButton(
                  icon: Icon(value ? Icons.visibility_off : Icons.visibility),
                  onPressed: () => obscure2.value = !value,
                ),
                border: const OutlineInputBorder(),
              ),
            );
          },
        ),
      ],
    );
  }
}
