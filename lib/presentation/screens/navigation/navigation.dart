import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/presentation/screens/artikel_screen/artikel.dart';
import 'package:marketplace/presentation/screens/favorite_screen/fovorite_screen.dart';
import 'package:marketplace/presentation/screens/history_screen/history_screen.dart';
import 'package:marketplace/presentation/screens/home_screen/home_screen.dart';
import 'package:marketplace/presentation/screens/profile_screen/profil_screen.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  List pages = const [
    HomeScreen(),
    ArtikelScreen(),
    FavoriteScreen(),
    HistoryScreen(),
    ProfileScreen(),
  ];
  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: pages[_selectedItemIndex],
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
                size, IconlyLight.heart, IconlyBroken.heart, "Fovorite", 2),
            buildNavbarItem(size, IconlyLight.activity, IconlyBroken.activity,
                "History", 3),
            buildNavbarItem(
                size, IconlyLight.profile, IconlyBroken.profile, "Profile", 4),
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
            _selectedItemIndex == index
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
              style: _selectedItemIndex == index
                  ? text4(primary900, regular)
                  : text4(neutral300, regular),
            )
          ],
        ),
      ),
    );
  }
}
