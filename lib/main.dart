import 'package:flutter/material.dart';

import 'onboarding_screen.dart';

void main() => runApp(const OnBoardingAnimation());

class OnBoardingAnimation extends StatelessWidget {
  const OnBoardingAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnboardingScreen(),
    );
  }
}
