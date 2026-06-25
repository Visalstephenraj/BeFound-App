import 'package:flutter/material.dart';
import '../onboarding2/onboarding_screen2.dart';
import 'widgets/onboarding_image.dart';
import 'widgets/onboarding_title.dart';
import 'widgets/onboarding_description.dart';
import 'widgets/onboarding_indicator.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            children: [
              const OnboardingImage(),
              const SizedBox(height: 30),
              const OnboardingTitle(),
              const SizedBox(height: 12),
              const OnboardingDescription(),
              const SizedBox(height: 20),
              const OnboardingIndicator(),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnboardingScreen2(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1565C0),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
