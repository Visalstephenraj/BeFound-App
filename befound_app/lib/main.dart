import 'package:befound_app/ui/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BeFoundApp());
}

class BeFoundApp extends StatelessWidget {
  const BeFoundApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BeFound',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // ✅ Start directly with the SplashScreen for a smoother user experience
      home: const SplashScreen(),
    );
  }
}
