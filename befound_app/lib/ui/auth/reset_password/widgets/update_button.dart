import 'package:flutter/material.dart';

class UpdateButton extends StatelessWidget {
  const UpdateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          backgroundColor: Colors.transparent, // ✅ transparent
          shadowColor: Colors.transparent,     // ✅ no shadow
          minimumSize: const Size.fromHeight(50),
        ),
        // ✅ Navigate to Login Success screen
        onPressed: () => Navigator.pushNamed(context, '/login_success'),
        child: const Text(
          "Update Password",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
