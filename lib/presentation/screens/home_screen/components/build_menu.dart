import 'package:flutter/material.dart';
import 'package:marketplace/presentation/routes/page_name.dart';
import 'package:marketplace/presentation/screens/widget/rounded_menu.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class BuildMenuHome extends StatelessWidget {
  const BuildMenuHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteName.favorite);
              },
              child: RoundedMenu(
                lebar: size.width * 0.18,
                tinggi: size.height * 0.1,
                image: Image.asset("assets/icon/dinding.png"),
                title: Text(
                  "Dinding",
                  style: text4(neutral500, regular),
                ),
              ),
            ),
            SizedBox(width: size.width * 0.05),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteName.favorite);
              },
              child: RoundedMenu(
                lebar: size.width * 0.18,
                tinggi: size.height * 0.1,
                image: Image.asset("assets/icon/electrical.png"),
                title: Text(
                  "Elektrikal",
                  style: text4(neutral500, regular),
                ),
              ),
            ),
            SizedBox(width: size.width * 0.05),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteName.favorite);
              },
              child: RoundedMenu(
                lebar: size.width * 0.18,
                tinggi: size.height * 0.1,
                image: Image.asset("assets/icon/electrical.png"),
                title: Text(
                  "Lantai",
                  style: text4(neutral500, regular),
                ),
              ),
            ),
            SizedBox(width: size.width * 0.05),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteName.favorite);
              },
              child: RoundedMenu(
                lebar: size.width * 0.18,
                tinggi: size.height * 0.1,
                image: Image.asset("assets/icon/mekanikal.png"),
                title: Text(
                  "Mekanikal",
                  style: text4(neutral500, regular),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteName.favorite);
              },
              child: RoundedMenu(
                lebar: size.width * 0.18,
                tinggi: size.height * 0.1,
                image: Image.asset(
                  "assets/icon/pintu.png",
                  scale: 0.8,
                ),
                title: Text(
                  "Pintu ",
                  style: text4(neutral500, regular),
                ),
              ),
            ),
            SizedBox(width: size.width * 0.03),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteName.favorite);
              },
              child: RoundedMenu(
                lebar: size.width * 0.18,
                tinggi: size.height * 0.1,
                image: Image.asset("assets/icon/plafon.png"),
                title: Text(
                  "Atap",
                  style: text4(neutral500, regular),
                ),
              ),
            ),
            SizedBox(width: size.width * 0.05),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteName.favorite);
              },
              child: RoundedMenu(
                lebar: size.width * 0.18,
                tinggi: size.height * 0.1,
                image: Image.asset("assets/icon/plumbing.png"),
                title: Text(
                  "Plumbing",
                  style: text4(neutral500, regular),
                ),
              ),
            ),
            SizedBox(width: size.width * 0.05),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteName.favorite);
              },
              child: RoundedMenu(
                lebar: size.width * 0.18,
                tinggi: size.height * 0.1,
                image: Image.asset("assets/icon/sanitasi.png"),
                title: Text(
                  "Sanitari",
                  style: text4(neutral500, regular),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
