// lib/views/components/next_or_get_started_button.dart
import 'package:flutter/material.dart';
import 'custom_button.dart';

class NextOrGetStartedButton extends StatelessWidget {
  final bool isLastPage;
  final VoidCallback onNext;

  const NextOrGetStartedButton({
    required this.isLastPage,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20.0,
      right: 20.0,
      child: isLastPage
          ? CustomButton(
              text: "Get Started",
              onPressed: () {
                print("Get Started pressed");
              },
              backgroundColor: Colors.white.withOpacity(0.8),
              textColor: Colors.black,
            )
          : GestureDetector(
              onTap: onNext,
              child: Image.asset(
                'assets/images/next_icon.png', // Use a clear name for the image asset
                width: 40.0,
                height: 40.0,
              ),
            ),
    );
  }
}
