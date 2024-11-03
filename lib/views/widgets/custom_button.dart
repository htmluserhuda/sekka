// lib/views/widgets/custom_button.dart
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color textColor;
  final Color? backgroundColor;

  const CustomButton({
    required this.text,
    required this.onPressed,
    this.textColor = Colors.white,
    this.backgroundColor, // Optional background color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.transparent, // Fallback to transparent
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: textColor,
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
