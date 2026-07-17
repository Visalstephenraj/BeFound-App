import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

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
          shadowColor: const Color.fromARGB(0, 34, 29, 29),     // ✅ no shadow
          minimumSize: const Size(200, 45),    // ✅ width 250, height 45
        ),
        onPressed: () => Navigator.pushNamed(context, '/login_success'),
        child: const Text(
          "Login",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
