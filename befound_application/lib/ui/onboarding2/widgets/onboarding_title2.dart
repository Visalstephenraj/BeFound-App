import 'package:flutter/material.dart';

class OnboardingTitle2 extends StatelessWidget {
  const OnboardingTitle2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Found something?',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      textAlign: TextAlign.center,
    );
  }
}
