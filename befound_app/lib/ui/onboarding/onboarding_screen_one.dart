import 'package:flutter/material.dart';
import 'widgets/onboarding_body.dart';

class OnboardingScreenOne extends StatelessWidget {
  const OnboardingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingBody(
      image: Image.asset('assets/images/onboarding_1.png', height: 250),
      title: "Search Lost Items",
      description: "Quickly find your lost belongings with BeFound.",
    );
  }
}
