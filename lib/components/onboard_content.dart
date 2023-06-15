import 'package:flutter/material.dart';

import 'form_page_view.dart';
import 'on_boarding_button.dart';

class OnboardContent extends StatefulWidget {
  const OnboardContent({super.key});

  @override
  State<OnboardContent> createState() => _OnboardContentState();
}

class _OnboardContentState extends State<OnboardContent> {
  late PageController onBoardingController;

  @override
  void initState() {
    super.initState();

    onBoardingController = PageController()
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    onBoardingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /*
    We use hasClients becuase we can't access the PageController before it's constructed
    So firstly we should check if it has been constructed or else the progress value will be zero
     */
    final double progress =
        onBoardingController.hasClients ? onBoardingController.page ?? 0 : 0;
    return SizedBox(
      height: 400 + progress * 140,
      child: Stack(
        fit: StackFit.expand,
        children: [
          FormPageView(
            onBoardingPageController: onBoardingController,
          ),
          OnBoardingButton(
            onBoardingPageController: onBoardingController,
            progress: progress,
          ),
        ],
      ),
    );
  }
}
