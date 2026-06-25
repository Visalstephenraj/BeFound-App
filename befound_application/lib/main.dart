import 'package:flutter/material.dart';
import 'ui/splash/splash_screen.dart';

void main() {
  runApp(const BeFoundApp());
}

class BeFoundApp extends StatelessWidget {
  const BeFoundApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BeFound',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const SplashScreen(),
    );
  }
}