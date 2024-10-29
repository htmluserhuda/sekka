// lib/views/components/previous_button.dart
import 'package:flutter/material.dart';

class PreviousButton extends StatelessWidget {
  final VoidCallback onPrevious;

  const PreviousButton({required this.onPrevious});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20.0,
      left: 20.0,
      child: GestureDetector(
        onTap: onPrevious,
        child: Image.asset(
          'assets/images/previous_icon.png', // Use a clear name for the image asset
          width: 40.0,
          height: 40.0,
        ),
      ),
    );
  }
}
