import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/splash.png', // replace with your file name
      height: 275,
      fit: BoxFit.contain,
    );
  }
}
