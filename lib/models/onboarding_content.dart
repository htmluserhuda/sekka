// lib/models/onboarding_content.dart
class OnboardingContent {
  final String imageAsset;
  final String title;
  final String description;
  final bool isLastPage;

  OnboardingContent({
    required this.imageAsset,
    required this.title,
    required this.description,
    this.isLastPage = false,
  });
}
