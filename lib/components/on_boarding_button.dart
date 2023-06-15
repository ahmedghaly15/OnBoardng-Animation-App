import 'package:flutter/material.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({
    super.key,
    required this.progress,
    required this.onBoardingPageController,
  });

  final double progress;
  final PageController onBoardingPageController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      height: 56,
      bottom: 32 + progress * 140,
      right: 16,
      child: GestureDetector(
        onTap: () {
          if (onBoardingPageController.page == 0) {
            onBoardingPageController.animateToPage(
              1,
              duration: const Duration(milliseconds: 400),
              curve: Curves.ease,
            );
          }
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(25)),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              stops: [0.4, 0.8],
              colors: [
                Color.fromARGB(255, 239, 104, 80),
                Color.fromARGB(255, 139, 33, 146)
              ],
            ),
          ),
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 92 + progress * 32,
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 1 - progress,
                        child: const Text("Get Started"),
                      ),
                      Opacity(
                        opacity: progress,
                        child: const Text(
                          "Create Account",
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                          softWrap: false,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(
                  Icons.chevron_right,
                  size: 24,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
