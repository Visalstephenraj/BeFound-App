import 'package:flutter/material.dart';

class SuccessIcon extends StatelessWidget {
  const SuccessIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'assets/images/loginsucc.png', // ✅ your image path
        width: 200,   // ✅ adjust width
        height: 200,  // ✅ adjust height
        fit: BoxFit.contain, // ✅ keeps aspect ratio
      ),
    );
  }
}
