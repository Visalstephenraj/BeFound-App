import 'package:flutter/material.dart';

class OnboardingDescription2 extends StatelessWidget {
  const OnboardingDescription2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Post the found item and help the rightful owner get it back.',
      style: TextStyle(
        fontSize: 16,
        color: Colors.black54,
      ),
      textAlign: TextAlign.center,
    );
  }
}
