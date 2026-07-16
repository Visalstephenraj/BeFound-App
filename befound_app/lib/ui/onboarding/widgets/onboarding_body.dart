import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  final Widget image;
  final String title;
  final String description;
  final Color titleColor;
  final Color descriptionColor;
  final double descriptionFontSize;
  final double titleFontSize;
  final EdgeInsetsGeometry padding;
  final Widget? button;

  const OnboardingBody({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    this.titleColor = Colors.black,
    this.descriptionColor = Colors.grey,
    this.descriptionFontSize = 16,
    this.titleFontSize = 22,
    this.padding = const EdgeInsets.all(24), // ✅ default padding
    this.button,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image,
          const SizedBox(height: 30),
          Text(
            title,
            style: TextStyle(
              fontSize: titleFontSize,
              fontWeight: FontWeight.bold,
              color: titleColor,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: descriptionFontSize,
              color: descriptionColor,
            ),
          ),
          const SizedBox(height: 30),
          if (button != null) button!,
        ],
      ),
    );
  }
}
