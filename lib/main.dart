import 'package:flutter/material.dart';

void main() => runApp(SeekaApp());

class SeekaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removed debug banner
      title: 'Seeka Onboarding',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          bodyLarge: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.w400),
          bodyMedium: TextStyle(color: Colors.white60, fontSize: 16),
        ),
      ),
      home: OnboardingScreen(),
    );
  }
}

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
          'Choose your ideal seat, class, and train type with ease. Experience smooth travel planning, like never before.', // Updated description
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
            itemBuilder: (context, index) {
              return OnboardingPage(
                  content: _pages[index], isFirstPage: index == 0);
            },
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: _skip,
              child: Text(
                "Skip",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          // Show the back button only if not on the first page
          if (_currentPage > 0)
            Positioned(
              bottom: 20,
              left: 20,
              child: GestureDetector(
                onTap: _previousPage,
                child: Image.asset(
                  'assets/images/Group 30.png', // Image for back button replaced with Group 30
                  width: 40, // Adjust width as needed
                  height: 40, // Adjust height as needed
                ),
              ),
            ),
          // Show the next button or Get Started button based on the page
          Positioned(
            bottom: 20,
            right: 20,
            child: _currentPage < _pages.length - 1
                ? GestureDetector(
                    onTap: _nextPage,
                    child: Image.asset(
                      'assets/images/Group 29.png', // Image for next button remains Group 29
                      width: 40, // Adjust width as needed
                      height: 40, // Adjust height as needed
                    ),
                  )
                : ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white.withOpacity(0.8),
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () {
                      print("Get Started pressed");
                    },
                    child: Text("Get started"),
                  ),
          ),
        ],
      ),
    );
  }
}

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

class OnboardingPage extends StatelessWidget {
  final OnboardingContent content;
  final bool isFirstPage;

  const OnboardingPage({required this.content, required this.isFirstPage});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Define a consistent left padding value
        double leftPadding = 32.0; // Adjust as needed

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
              bottom: 40, // Adjust this value for spacing from the bottom
              left: leftPadding,
              right: leftPadding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Add padding to the text description
                  Padding(
                    padding:
                        EdgeInsets.only(bottom: 50), // Optional bottom padding
                    child: Text(
                      content.description,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 24, // Set font size
                            fontWeight: FontWeight.w400, // Set font weight
                            fontFamily: 'Poppins', // Set font family
                          ),
                      textAlign: TextAlign.left, // Align text to the left
                    ),
                  ),
                  // Optionally add title here as well
                  if (isFirstPage)
                    Padding(
                      padding: EdgeInsets.only(top: 10), // Optional top padding
                      child: Text(
                        content.title,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                        textAlign: TextAlign.left, // Align title to the left
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
