import 'package:flutter/material.dart';
import 'widgets/otp_header.dart';
import 'widgets/otp_boxes.dart';
import 'widgets/resend_otp.dart';
import 'widgets/verify_button.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("OTP Verification")),
      body: SingleChildScrollView(   // ✅ scroll support
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: const [
              SizedBox(height: 20),
              OtpHeader(),       // ✅ top image + text
              SizedBox(height: 30),
              OtpBoxes(),        // ✅ 6 OTP input boxes
              SizedBox(height: 20),
              VerifyButton(),    // ✅ gradient button
              SizedBox(height: 20),
              ResendOtp(),       // ✅ resend timer
            ],
          ),
        ),
      ),
    );
  }
}
