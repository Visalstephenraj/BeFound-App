import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final int currentIndex;
  final int total;

  const PageIndicator({super.key, required this.currentIndex, required this.total});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(total, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: currentIndex == index ? 16 : 8,
          height: 8,
          decoration: BoxDecoration(
            color: currentIndex == index ? Colors.blue : Colors.grey,
            borderRadius: BorderRadius.circular(4),
          ),
        );
      }),
    );
  }
}
