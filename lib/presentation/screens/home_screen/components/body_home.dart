import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/presentation/routes/page_name.dart';
import 'package:marketplace/presentation/screens/home_screen/components/build_menu.dart';
import 'package:marketplace/presentation/screens/widget/search.dart';
import 'package:marketplace/utilities/color.dart';

import 'build_banner.dart';

class BodyHomeScreen extends StatefulWidget {
  const BodyHomeScreen({Key? key}) : super(key: key);

  @override
  State<BodyHomeScreen> createState() => _BodyHomeScreenState();
}

class _BodyHomeScreenState extends State<BodyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: size.height * 0.02, horizontal: size.width * 0.04),
      width: size.width,
      decoration: const BoxDecoration(
        color: neutral100,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: size.width * 0.55,
                  height: size.height * 0.05,
                  child: const Searching(),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteName.notifikasi);
                  },
                  icon: const Icon(
                    IconlyLight.notification,
                    color: primary900,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteName.keranjang);
                  },
                  icon: const Icon(
                    IconlyLight.buy,
                    color: primary900,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteName.chat);
                  },
                  icon: const Icon(
                    IconlyLight.chat,
                    color: primary900,
                  ),
                ),
              ],
            ),
            const BuildBannerHome(),
            const SizedBox(
              height: 30,
            ),
            const BuildMenuHome(),
          ],
        ),
      ),
    );
  }
}
