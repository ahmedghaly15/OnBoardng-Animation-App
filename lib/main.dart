import 'package:flutter/material.dart';

import 'onboarding_screen.dart';

void main() => runApp(const OnBoardingAnimation());

class OnBoardingAnimation extends StatelessWidget {
  const OnBoardingAnimation({super.key});

  // This widget is the root of your application.
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
