import 'package:flutter/material.dart';
import 'ui/onboarding/onboarding_screen.dart'; // import your onboarding screen

void main() {
  runApp(const BeFoundApp());
}

class BeFoundApp extends StatelessWidget {
  const BeFoundApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BeFound',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // ✅ Start directly with OnboardingScreenOne
      home: const OnboardingScreen(),
    );
  }
}
