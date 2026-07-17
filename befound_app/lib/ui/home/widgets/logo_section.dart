import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  const LogoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 250, // ✅ adjust logo size here
            width: 250,
            child: Image.asset(
              'assets/images/app_logo.png',
              fit: BoxFit.contain, // ✅ keeps full logo visible
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
