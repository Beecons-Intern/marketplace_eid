import 'package:flutter/material.dart';

import '../../../../utilities/color.dart';
import '../../../../utilities/text_styles.dart';
import '../../../routes/page_name.dart';
import '../../widget/card_produk.dart';

class BUildListviewProduk extends StatelessWidget {
  const BUildListviewProduk({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Baru Rilis",
                  style: text2(neutral500, regular),
                  overflow: TextOverflow.clip,
                ),
                SizedBox(
                  height: size.height * 0.5,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Row(
                          children: const [],
                        );
                      } else {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: size.height * 0.02,
                              horizontal: size.width * 0.015),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, RouteName.detailProduk);
                            },
                            child: const CardProduk(
                              color1: Color.fromARGB(255, 2, 62, 110),
                              color2: Color.fromARGB(255, 124, 186, 236),
                              batas: Colors.transparent,
                              title: " Baru Rilis",
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Populer",
                  style: text2(neutral500, regular),
                  overflow: TextOverflow.clip,
                ),
                SizedBox(
                  height: size.height * 0.5,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Row(
                          children: const [],
                        );
                      } else {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: size.height * 0.02,
                              horizontal: size.width * 0.015),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, RouteName.detailProduk);
                            },
                            child: const CardProduk(
                              color1: Color.fromARGB(255, 2, 62, 110),
                              color2: Color.fromARGB(255, 124, 186, 236),
                              batas: Colors.transparent,
                              title: " Populer",
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
