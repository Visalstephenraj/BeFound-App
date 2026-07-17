import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24), // ✅ space from left & right
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
            backgroundColor: Colors.transparent, // ✅ transparent
            shadowColor: Colors.transparent,     // ✅ no shadow
            minimumSize: const Size.fromHeight(50), // ✅ height 50, width auto
          ),
          // ✅ Navigate to Home screen
          onPressed: () => Navigator.pushNamed(context, '/home'),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Text(
              "Continue →",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
