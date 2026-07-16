import 'package:flutter/material.dart';
import 'widgets/onboarding_body.dart';
import 'widgets/onboarding_button.dart';

class OnboardingScreenThree extends StatelessWidget {
  const OnboardingScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingBody(
      image: Image.asset('assets/images/onboarding_3.png', height: 450),
      title: "Get Back What You Lost",
      description: "Connect lost items with their owners through a simple, secure, and trusted community. Every post can make someone's day.",
      titleColor: const Color.fromARGB(255, 223, 61, 139),            // custom colour for title
      descriptionColor: Colors.black,      // custom colour for description
      titleFontSize: 26,                   // custom font size for title
      descriptionFontSize: 20,             // custom font size for description
      button: OnboardingButton(
        text: "Get Started",
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/login');
        },
      ),
    );
  }
}
