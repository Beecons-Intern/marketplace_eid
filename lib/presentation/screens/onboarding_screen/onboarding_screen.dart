import 'package:flutter/material.dart';
import 'package:marketplace/presentation/screens/onboarding_screen/components/body_onboarding.dart';
import 'package:marketplace/utilities/color.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primary,
      body: BodyOnBoarding(),
    );
  }
}
