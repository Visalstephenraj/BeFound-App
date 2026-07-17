import 'package:flutter/material.dart';

class SplashLoading extends StatelessWidget {
  const SplashLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3, // 30% of screen height
      child: Image.asset(
        'assets/images/splash.png', // ✅ your splash image path
        fit: BoxFit.cover, // fills width, crops proportionally
      ),
    );
  }
}
