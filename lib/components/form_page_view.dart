import 'package:flutter/material.dart';

import 'landed_content.dart';
import 'sing_up_form.dart';

class FormPageView extends StatelessWidget {
  const FormPageView({
    super.key,
    required this.onBoardingPageController,
  });

  final PageController onBoardingPageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Expanded(
          child: PageView(
            controller: onBoardingPageController,
            children: const [
              LandingContent(),
              SignUpForm(),
            ],
          ),
        ),
      ],
    );
  }
}
