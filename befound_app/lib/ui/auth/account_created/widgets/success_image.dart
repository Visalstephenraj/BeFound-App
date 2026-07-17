import 'package:flutter/material.dart';

class SuccessImage extends StatelessWidget {
  const SuccessImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/registersucc.png', // ✅ replace with your party popper/confetti image
      width: 200,
      height: 200,
      fit: BoxFit.contain,
    );
  }
}
