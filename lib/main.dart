// lib/main.dart
import 'package:flutter/material.dart';
import 'package:sekka/features/train_booking/views/train_booking_page.dart';

void main() => runApp(SeekaApp());

class SeekaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Seeka Onboarding',
      theme: ThemeData.dark(),
      //   primarySwatch: Colors.blue,
      //   textTheme: TextTheme(
      //     bodyLarge: TextStyle(
      //         color: Colors.white, fontSize: 24, fontWeight: FontWeight.w400),
      //     // bodyMedium: TextStyle(color: Colors.white, fontSize: 16),
      //   ),
      // ),
      home: TrainBookingPage(),
    );
  }
}
