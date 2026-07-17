import 'package:flutter/material.dart';
import 'package:befound_app/ui/auth/otp/otp_verification_screen.dart';
class SendOtpButton extends StatelessWidget {
  const SendOtpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xFFF58529), // orange
              Color(0xFFDD2A7B), // pink
              Color(0xFF8134AF), // purple
              Color(0xFF515BD4), // blue
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            minimumSize: const Size.fromHeight(50),
          ),
          // ✅ Navigate to OTP screen
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const OtpVerificationScreen(),
            ),
          ),
          child: const Text(
            "Send OTP",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
