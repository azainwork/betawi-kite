import 'package:flutter/material.dart';
import 'screens/splash_screen.dart'; // ← ganti import home ke splash

void main() {
  runApp(const BetawiApp());
}

class BetawiApp extends StatelessWidget {
  const BetawiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Betawi Kite',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFD32F2F)),
        useMaterial3: true,
      ),
      builder: (context, child) {
        return Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 430),
            child: ClipRect(child: child!),
          ),
        );
      },
      home: const SplashScreen(), // ← mulai dari splash
    );
  }
}