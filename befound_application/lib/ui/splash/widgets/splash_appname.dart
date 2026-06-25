import 'package:flutter/material.dart';

class SplashAppName extends StatelessWidget {
  const SplashAppName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'BeFound',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        letterSpacing: 1.2,
      ),
    );
  }
}
