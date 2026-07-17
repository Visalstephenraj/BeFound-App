import 'package:flutter/material.dart';

class PasswordRules extends StatelessWidget {
  const PasswordRules({super.key});

  Widget ruleItem(String text) {
    return Row(
      children: [
        const Icon(Icons.check_circle, color: Colors.green, size: 20),
        const SizedBox(width: 8),
        Text(text, style: const TextStyle(fontSize: 14)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ruleItem("At least 8 characters"),
        ruleItem("One uppercase letter"),
        ruleItem("One number"),
        ruleItem("One special character"),
      ],
    );
  }
}
