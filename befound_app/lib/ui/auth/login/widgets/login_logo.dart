import 'package:flutter/material.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // App logo
        Image.asset(
          'assets/images/app_logo.png',
          height: 275,
        ),
        const SizedBox(height: 10),

        
      ],
    );
  }
}
