import 'package:flutter/material.dart';
import 'onboarding_screen_one.dart';
import 'onboarding_screen_two.dart';
import 'onboarding_screen_three.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        onPageChanged: (index) {
          setState(() => _currentPage = index);
        },
        children: const [
          OnboardingScreenOne(),
          OnboardingScreenTwo(),
          OnboardingScreenThree(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            bool isActive = _currentPage == index;
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: isActive
                    ? const LinearGradient(
                        colors: [
                          Color(0xFF2563EB), // Blue shade (logo colour)
                          Color.fromARGB(255, 223, 39, 217), // Green shade (logo colour)
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      )
                    : null,
                color: isActive ? null : const Color.fromARGB(255, 121, 115, 115), // fallback for inactive
              ),
            );
          }),
        ),
      ),
    );
  }
}
