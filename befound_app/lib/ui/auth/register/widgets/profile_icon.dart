import 'package:flutter/material.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        // ✅ Profile image inside circular container
        Container(
          width: 100,
          height: 100,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Image.asset(
              'assets/images/profile.png', // ✅ replace with your image path
              fit: BoxFit.cover,
              width: 100,
              height: 100,
            ),
          ),
        ),
        // ✅ Green plus icon overlay
        Container(
          decoration: const BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(4),
          child: const Icon(Icons.add, size: 20, color: Colors.white),
        ),
      ],
    );
  }
}
