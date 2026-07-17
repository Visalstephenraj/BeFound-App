import 'package:flutter/material.dart';

class SecurityBox extends StatelessWidget {
  const SecurityBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: const [
          Icon(Icons.shield, color: Colors.deepPurple, size: 40),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              "You are now secure\nYour account is protected and you can continue using BeFound.",
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
