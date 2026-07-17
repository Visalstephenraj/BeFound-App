import 'package:flutter/material.dart';

class ResendOtp extends StatelessWidget {
  const ResendOtp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Resend OTP in 00:45",
      style: TextStyle(
        fontSize: 14,
        color: Color.fromARGB(255, 10, 58, 190),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
