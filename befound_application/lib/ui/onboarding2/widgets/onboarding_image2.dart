import 'package:flutter/material.dart';

class OnboardingImage2 extends StatelessWidget {
  const OnboardingImage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/onboardingscreen2.png',
      fit: BoxFit.contain,
      height: 300,
    );
  }
}
