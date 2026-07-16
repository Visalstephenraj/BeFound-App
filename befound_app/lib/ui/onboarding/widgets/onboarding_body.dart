import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  final Widget image;
  final String title;
  final String description;
  final Widget? button;

  const OnboardingBody({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    this.button,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        image,
        const SizedBox(height: 30),
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        Text(
          description,
          style: const TextStyle(fontSize: 16, color: Colors.black54),
          textAlign: TextAlign.center,
        ),
        if (button != null) ...[
          const SizedBox(height: 30),
          button!,
        ]
      ],
    );
  }
}
