// lib/views/components/onboarding_navigation.dart
import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'skip_button.dart';
import 'previous_button.dart';
import 'next_or_get_started_button.dart';

class OnboardingNavigation extends StatelessWidget {
  final int currentPage;
  final VoidCallback onNext;
  final VoidCallback onPrevious;
  final VoidCallback onSkip;
  final bool isLastPage;

  const OnboardingNavigation({
    required this.currentPage,
    required this.onNext,
    required this.onPrevious,
    required this.onSkip,
    required this.isLastPage,
  });

  // Constants for better readability
  static const double topPadding = 50.0;
  static const double bottomPadding = 20.0;
  static const double rightPadding = 20.0;
  static const double leftPadding = 20.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SkipButton(onSkip: onSkip),
        if (currentPage > 0) PreviousButton(onPrevious: onPrevious),
        NextOrGetStartedButton(
          isLastPage: isLastPage,
          onNext: onNext,
        ),
      ],
    );
  }
}
