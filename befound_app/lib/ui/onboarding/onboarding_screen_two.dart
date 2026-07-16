import 'package:flutter/material.dart';
import 'widgets/onboarding_body.dart';

class OnboardingScreenTwo extends StatelessWidget {
  const OnboardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingBody(
      image: Image.asset('assets/images/onboarding_2.png', height: 450),
      title: "Report Found Items",
      description: "Found something? Share the item details with a photo and location to help the rightful owner find it easily.",
      titleColor: const Color.fromARGB(255, 74, 209, 207),             // custom colour for title
      descriptionColor: Colors.grey[800]!, // custom colour for description
      titleFontSize: 24,                   // custom font size for title
      descriptionFontSize: 18,             // custom font size for description
    );
  }
}
