import 'package:education_app/core/res/media_res.dart';
import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({
    required this.child,
    required this.image,
    super.key,
  });
  final Widget child;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Center(
          child:
              // Lottie.asset(MediaRes.onBoardingBackground)),
              child,
        ),
      ),
    );
  }
}
