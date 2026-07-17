import 'package:flutter/material.dart';

class CreateAccountButton extends StatelessWidget {
  const CreateAccountButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don’t have an account? "),
        TextButton(
          onPressed: () => Navigator.pushNamed(context, '/register'),
          child: const Text(
            "Sign Up",
            style: TextStyle(
              color: Color.fromARGB(255, 25, 14, 238), // ✅ custom color
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
