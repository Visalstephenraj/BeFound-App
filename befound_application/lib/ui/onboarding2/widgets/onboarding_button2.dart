import 'package:flutter/material.dart';

class OnboardingButton2 extends StatelessWidget {
  const OnboardingButton2({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Navigate to Onboarding Screen 3 or Login
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
    );
  }
}
