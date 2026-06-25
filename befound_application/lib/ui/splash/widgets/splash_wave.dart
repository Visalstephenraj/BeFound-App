import 'package:flutter/material.dart';

class SplashWave extends StatelessWidget {
  const SplashWave({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: _WaveClipper(),
      child: Container(
        height: 200,
        color: const Color(0xFF1565C0),
      ),
    );
  }
}

class _WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    // 1. Start at the bottom-left corner
    path.moveTo(0, size.height);
    
    // 2. Move up to the starting height of the wave (from top)
    path.lineTo(0, 60);

    // 3. First wave curve (Crest/Trough inverted)
    path.quadraticBezierTo(
      size.width / 4, 0, 
      size.width / 2, 60,
    );

    // 4. Second wave curve
    path.quadraticBezierTo(
      3 * size.width / 4, 120,
      size.width, 60,
    );

    // 5. Draw line down to the bottom-right corner
    path.lineTo(size.width, size.height);
    
    // 6. Close the path back to the starting point (bottom-left)
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}