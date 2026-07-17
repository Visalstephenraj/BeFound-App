import 'package:flutter/material.dart';

class LoginOption extends StatelessWidget {
  const LoginOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Remember your password? "),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/login'),
          child: const Text(
            "Login",
            style: TextStyle(
              color: Color.fromARGB(255, 39, 24, 204),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
