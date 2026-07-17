import 'package:flutter/material.dart';
import 'widgets/profile_icon.dart';
import 'widgets/register_form.dart';
import 'widgets/create_account_button.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: const [
              SizedBox(height: 20),
              ProfileIcon(),          // ✅ gradient avatar + plus
              SizedBox(height: 20),
              Text(
                "Create Your Account",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                "Join BeFound and get started",
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              SizedBox(height: 30),
              RegisterForm(),         // ✅ form fields
              SizedBox(height: 30),
              CreateAccountButton(),  // ✅ purple button
            ],
          ),
        ),
      ),
    );
  }
}
