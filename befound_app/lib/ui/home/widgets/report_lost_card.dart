import 'package:flutter/material.dart';

class ReportLostCard extends StatelessWidget {
  const ReportLostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        minimumSize: const Size.fromHeight(60),
      ),
      onPressed: () {
        // TODO: Navigate to Report Lost screen
      },
      icon: const Icon(Icons.lock, color: Colors.white),
      label: const Text("Report Lost Item", style: TextStyle(color: Colors.white)),
    );
  }
}
