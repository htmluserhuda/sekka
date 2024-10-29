// lib/views/onboarding_screen.dart
import 'package:flutter/material.dart';
import '../models/onboarding_content.dart';
import 'onboarding_page.dart';
import 'widgets/onboarding_navigation.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<OnboardingContent> _pages = [
    OnboardingContent(
      imageAsset: 'assets/images/1.png',
      description:
          'Skip the hassle and book your train tickets in just a few taps. Seeka brings Egypt\'s train network to your fingertips!',
      title: '',
    ),
    OnboardingContent(
      imageAsset: 'assets/images/2.png',
      description:
          'Choose your ideal seat, class, and train type with ease. Experience smooth travel planning, like never before.',
      title: '',
    ),
    OnboardingContent(
      imageAsset: 'assets/images/3.png',
      description:
          'Get personalized train suggestions and 24/7 support. Travel smarter with Seeka!',
      title: '',
      isLastPage: true,
    ),
  ];

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  void _skip() {
    print("Skip pressed");
  }

  void _nextPage() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            itemCount: _pages.length,
            itemBuilder: (context, index) =>
                OnboardingPage(content: _pages[index], isFirstPage: index == 0),
          ),
          OnboardingNavigation(
            currentPage: _currentPage,
            onNext: _nextPage,
            onPrevious: _previousPage,
            onSkip: _skip,
            isLastPage: _currentPage == _pages.length - 1,
          ),
        ],
      ),
    );
  }
}
