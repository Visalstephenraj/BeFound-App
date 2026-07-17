import 'package:flutter/material.dart';

class ReportFoundCard extends StatelessWidget {
  const ReportFoundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        minimumSize: const Size.fromHeight(60),
      ),
      onPressed: () {
        // TODO: Navigate to Report Found screen
      },
      icon: const Icon(Icons.add_box, color: Colors.white),
      label: const Text("Report Found Item", style: TextStyle(color: Colors.white)),
    );
  }
}
