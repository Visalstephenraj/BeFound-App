import 'package:flutter/material.dart';

class PadlockIcon extends StatelessWidget {
  const PadlockIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Replace with your padlock image
        Image.asset(
          'assets/images/forgetimg.png', // replace with your file name
          height: 200,
        ),
        const SizedBox(height: 20),
        const Text(
          "Forgot Password?",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(103, 58, 183, 1),
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            "Don’t worry! Enter your email and we will send you a 6-digit OTP to reset your password.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
        ),
      ],
    );
  }
}
