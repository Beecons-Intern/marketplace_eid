import 'package:flutter/material.dart';
import 'package:marketplace/presentation/screens/welcome_screen/components/body_welcome.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyWelcomeScreen(),
    );
  }
}
