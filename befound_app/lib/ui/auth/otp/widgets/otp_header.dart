import 'package:flutter/material.dart';

class OtpHeader extends StatelessWidget {
  const OtpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/otp.png', // ✅ replace with your illustration
          height: 250,
        ),
        const SizedBox(height: 20),
        const Text(
          "Verify OTP",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 103, 58, 183),
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          "We’ve sent a 6-digit OTP to\nexample@gmail.com",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14, color: Colors.black54),
        ),
      ],
    );
  }
}
