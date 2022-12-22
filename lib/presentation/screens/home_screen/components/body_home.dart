import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/presentation/routes/page_name.dart';
import 'package:marketplace/presentation/screens/home_screen/components/build_baru_rilis.dart';
import 'package:marketplace/presentation/screens/home_screen/components/build_brand.dart';
import 'package:marketplace/presentation/screens/home_screen/components/build_hanya_untukmu.dart';
import 'package:marketplace/presentation/screens/home_screen/components/build_menu.dart';
import 'package:marketplace/presentation/screens/home_screen/components/build_paling_populer.dart';
import 'package:marketplace/presentation/screens/widget/search.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

import '../../widget/card_produk.dart';
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
        vertical: size.height * 0.02,
      ),
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
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.02,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      width: size.width * 0.55,
                      height: size.height * 0.05,
                      child: const Searching()),
                  IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {
                      Navigator.pushNamed(context, RouteName.notifikasi);
                    },
                    icon: const Icon(
                      IconlyLight.notification,
                      color: primary900,
                    ),
                  ),
                  IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {
                      Navigator.pushNamed(context, RouteName.keranjang);
                    },
                    icon: const Icon(
                      IconlyLight.buy,
                      color: primary900,
                    ),
                  ),
                  IconButton(
                    padding: const EdgeInsets.all(0),
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
            ),
            const BuildBannerHome(),
            const SizedBox(
              height: 30,
            ),
            const BuildMenuHome(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Diskon Spesial",
                    style: text3(neutral500, bold),
                  ),
                  SizedBox(
                    height: size.height * 0.008,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Berakhir dalam",
                            style: text4(neutral500, regular),
                          ),
                          SizedBox(
                            width: size.width * 0.01,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color.fromARGB(255, 228, 27, 13)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.01,
                                  vertical: size.height * 0.003),
                              child: Text(
                                " 01 : 12 : 59",
                                style: text4(neutral100, semibold),
                              ),
                            ),
                          )
                        ],
                      ),
                      Text(
                        "Lihat Semua",
                        style: text4(primary, semibold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Container(
              height: size.height * 0.45,
              width: size.width,
              color: primary,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.topCenter,
                          width: size.width * 0.35,
                          height: size.height * 0.07,
                          decoration: const BoxDecoration(
                              color: accentYellow400,
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(100))),
                          child: const Text(
                            "SALE",
                            style: TextStyle(
                              color: Color.fromARGB(255, 228, 27, 13),
                              fontSize: 30,
                              fontWeight: bold,
                            ),
                            // textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        Text(
                          "DISKON MULAI",
                          style: text3(accentYellow300, bold),
                        ),
                        const Text(
                          "40 %",
                          style: TextStyle(
                            color: accentYellow300,
                            fontSize: 36,
                            fontWeight: bold,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Image.asset(
                          "assets/images/toilet.png",
                        )
                      ],
                    );
                  } else {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.02,
                          horizontal: size.width * 0.015),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, RouteName.detailProduk);
                        },
                        child: const CardProduk(
                          color1: Color.fromARGB(255, 4, 143, 29),
                          color2: Color.fromARGB(255, 115, 200, 127),
                          batas: Colors.transparent,
                          title: "Sedang Diskon",
                        ),
                      ),
                    );
                  }
                },
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            const BuildBrand(),
            const BuildBaruRilis(),
            SizedBox(
              height: size.height * 0.02,
            ),
            const BuildPalingPopuler(),
            SizedBox(
              height: size.height * 0.02,
            ),
            const BuildHanyaUntukmu(),
          ],
        ),
      ),
    );
  }
}
