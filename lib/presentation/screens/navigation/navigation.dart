import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        width: size.width,
        color: neutral100,
        child: Row(
          children: [
            buildNavbarItem(
                size, IconlyLight.home, IconlyBroken.home, "Home", 0),
            buildNavbarItem(size, IconlyLight.document, IconlyBroken.document,
                "Article", 1),
            buildNavbarItem(
                size, IconlyLight.heart, IconlyBroken.heart, "fovorite", 2),
            buildNavbarItem(size, IconlyLight.activity, IconlyBroken.activity,
                "Hisotry", 3),
            buildNavbarItem(
                size, IconlyLight.profile, IconlyBroken.profile, "person", 4),
          ],
        ),
      ),
    );
  }

  Widget buildNavbarItem(Size size, IconData iconActive, IconData nonActiveIcon,
      String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItemIndex = index;
        });
      },
      child: SizedBox(
        height: 60,
        width: size.width / 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            index == _selectedItemIndex
                ? Icon(
                    iconActive,
                    color: primary900,
                  )
                : Icon(
                    nonActiveIcon,
                    color: neutral300,
                  ),
            const SizedBox(
              height: 4,
            ),
            Text(
              text,
              style: index == _selectedItemIndex
                  ? text4(primary900, regular)
                  : text4(neutral300, regular),
            )
          ],
        ),
      ),
    );
  }
}
