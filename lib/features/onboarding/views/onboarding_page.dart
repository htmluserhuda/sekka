// lib/views/onboarding_page.dart
import 'package:flutter/material.dart';
import '../models/onboarding_content.dart';

class OnboardingPage extends StatelessWidget {
  final OnboardingContent content;
  final bool isFirstPage;

  const OnboardingPage({required this.content, required this.isFirstPage});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double leftPadding = 32.0;

        return Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                content.imageAsset,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: Container(
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            Positioned(
              bottom: 40,
              left: leftPadding,
              right: leftPadding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 50),
                    child: Text(
                      content.description,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Poppins',
                          ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  if (isFirstPage)
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        content.title,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
