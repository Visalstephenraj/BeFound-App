import 'package:flutter/material.dart';
import 'widgets/onboarding_image2.dart';
import 'widgets/onboarding_title2.dart';
import 'widgets/onboarding_description2.dart';
import 'widgets/onboarding_indicator2.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAFB),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            children: [
              const OnboardingImage2(),
              const SizedBox(height: 30),
              const OnboardingTitle2(),
              const SizedBox(height: 12),
              const OnboardingDescription2(),
              const SizedBox(height: 20),
              const OnboardingIndicator2(),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // TODO: Navigate to OnboardingScreen3 or Home
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
