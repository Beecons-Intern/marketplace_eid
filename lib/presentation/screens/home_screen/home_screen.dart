import 'package:flutter/material.dart';
import 'package:marketplace/presentation/screens/home_screen/components/body_home.dart';
import 'package:marketplace/presentation/screens/widget/build_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
          child: BuildAppbar(
            size: Size(size.width, size.height * 0.6),
          ),
        ),
        Positioned(
            child: Padding(
          padding: EdgeInsets.only(top: size.height * 0.1),
          child: const BodyHomeScreen(),
        )),
      ],
    );
  }
}
