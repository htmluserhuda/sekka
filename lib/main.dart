// lib/main.dart
import 'package:flutter/material.dart';
import 'views/splash_screen.dart';

void main() => runApp(SeekaApp());

class SeekaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Seeka Onboarding',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyLarge: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(color: Colors.white60, fontSize: 16),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
