// lib/views/components/skip_button.dart
import 'package:flutter/material.dart';
import 'custom_button.dart';

class SkipButton extends StatelessWidget {
  final VoidCallback onSkip;

  const SkipButton({required this.onSkip});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50.0,
      right: 20.0,
      child: CustomButton(
        text: "Skip",
        onPressed: onSkip,
        textColor: Colors.white,
      ),
    );
  }
}
