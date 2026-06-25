import 'package:flutter/material.dart';
import '../onboarding1/onboarding_screen1.dart';
import 'widgets/splash_logo.dart';
import 'widgets/splash_wave.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Trigger navigation safely after first frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 800),
            pageBuilder: (context, animation, secondaryAnimation) =>
                const OnboardingScreen1(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        );
      });
    });

    return const Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: SplashWave(),
          ),
          Center(child: SplashLogo()),
        ],
      ),
    );
  }
}
