import 'package:flutter/material.dart';

class OnboardingIndicator2 extends StatelessWidget {
  const OnboardingIndicator2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildDot(false),
        _buildDot(true),
        _buildDot(false),
      ],
    );
  }

  Widget _buildDot(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 10 : 8,
      height: isActive ? 10 : 8,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF1565C0) : Colors.grey[300],
        shape: BoxShape.circle,
      ),
    );
  }
}
