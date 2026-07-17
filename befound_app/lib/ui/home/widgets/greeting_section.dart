import 'package:flutter/material.dart';
import 'logo_section.dart'; // ✅ semicolon added

class GreetingSection extends StatelessWidget {
  const GreetingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ✅ Greeting text only (three dots removed)
        Padding(
          padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
          child: const Text(
            "Hello, Visal 👋 Good to see you!",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 20),
        // ✅ Logo section below
        const LogoSection(),
      ],
    );
  }
}
