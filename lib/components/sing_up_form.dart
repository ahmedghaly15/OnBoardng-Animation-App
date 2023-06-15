import 'package:flutter/material.dart';

import 'on_boarding_text_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Create an account",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const OnBoardingTextField(
              label: 'Email address',
              icon: Icons.email,
            ),
            const SizedBox(height: 16),
            const OnBoardingTextField(
              label: 'Password',
              icon: Icons.lock,
              hidden: true,
            ),
            const SizedBox(height: 200),
            Text(
              "Already have an account? Sign in.",
              style: TextStyle(fontSize: 16, color: Colors.blueGrey.shade300),
            )
          ],
        ),
      ),
    );
  }
}
