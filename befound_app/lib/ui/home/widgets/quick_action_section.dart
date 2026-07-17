import 'package:flutter/material.dart';
import 'report_lost_card.dart';
import 'report_found_card.dart';

class QuickActionSection extends StatelessWidget {
  const QuickActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: ReportLostCard()),
        SizedBox(width: 12),
        Expanded(child: ReportFoundCard()),
      ],
    );
  }
}
