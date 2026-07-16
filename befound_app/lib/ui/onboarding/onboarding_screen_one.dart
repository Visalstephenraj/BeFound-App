import 'package:flutter/material.dart';
import 'widgets/onboarding_body.dart';

class OnboardingScreenOne extends StatelessWidget {
  const OnboardingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingBody(
      image: Image.asset('assets/images/onboarding_1.png', height: 450),
      title: "Search Lost Items",
      description: "Quickly search for lost belongings posted by people around you. Find your valuable items faster with location-based search.",
      titleColor: Colors.deepPurple,
      descriptionColor: Colors.black,
      descriptionFontSize: 20,
      titleFontSize: 22,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 40), // ✅ custom padding
    );
  }
}
