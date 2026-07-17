import 'package:flutter/material.dart';
import 'widgets/success_image.dart';
import 'widgets/success_text.dart';
import 'widgets/continue_button.dart';

class AccountCreatedScreen extends StatelessWidget {
  const AccountCreatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SuccessImage(),       // ✅ party popper image
              SizedBox(height: 30),
              SuccessText(),        // ✅ title + subtitle
              SizedBox(height: 40),
              ContinueButton(),     // ✅ gradient button
            ],
          ),
        ),
      ),
    );
  }
}
