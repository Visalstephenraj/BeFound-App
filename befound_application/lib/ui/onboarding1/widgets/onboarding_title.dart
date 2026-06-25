import 'package:flutter/material.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Lost something?',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      textAlign: TextAlign.center,
    );
  }
}
