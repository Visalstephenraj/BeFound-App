import 'package:flutter/material.dart';
import 'widgets/onboarding_body.dart';

class OnboardingScreenTwo extends StatelessWidget {
  const OnboardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingBody(
      image: Image.asset('assets/images/onboarding_2.png', height: 250),
      title: "Report Found Items",
      description: "Help others by reporting items you find.",
    );
  }
}
