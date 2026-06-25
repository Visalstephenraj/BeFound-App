import 'package:flutter/material.dart';

class OnboardingDescription extends StatelessWidget {
  const OnboardingDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Report your lost items in few simple steps and get help from people around you.',
      style: TextStyle(
        fontSize: 16,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
      textAlign: TextAlign.center,
    );
  }
}
