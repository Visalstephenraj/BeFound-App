import 'package:flutter/material.dart';
import 'widgets/back_button_widget.dart';
import 'widgets/padlock_icon.dart';
import 'widgets/email_textfield.dart';
import 'widgets/send_otp_button.dart';
import 'widgets/login_option.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(height: 40),
            BackButtonWidget(),   // ✅ back arrow
            SizedBox(height: 30),
            PadlockIcon(),        // ✅ purple padlock image
            SizedBox(height: 20),
            EmailField(),         // ✅ email input
            SizedBox(height: 20),
            SendOtpButton(),      // ✅ send otp button
            SizedBox(height: 30),
            LoginOption(),        // ✅ already have account? login
          ],
        ),
      ),
    );
  }
}
