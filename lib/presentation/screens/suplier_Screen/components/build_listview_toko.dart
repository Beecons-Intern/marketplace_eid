import 'package:flutter/material.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

import '../../../routes/page_name.dart';
import '../../widget/card_produk.dart';

class BuildLIstviewToko extends StatelessWidget {
  const BuildLIstviewToko({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * 0.15,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/banner-comingsoon.png"),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: size.height * 0.24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Flash Sale",
                    style: text2(neutral500, bold),
                  ),
                ),
                const Divider(
                  thickness: 2,
                  color: neutral200,
                ),
                SizedBox(
                  height: size.height * 0.15,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 1,
                      itemBuilder: (context, index) => Container(
                            padding: const EdgeInsets.all(10),
                            width: size.width,
                            height: size.height * 0.05,
                            decoration: const BoxDecoration(
                                color: neutral100,
                                boxShadow: [
                                  BoxShadow(
                                    color: neutral300,
                                    blurRadius: 12,
                                    offset: Offset(1, 2),
                                  ),
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: size.width * 0.3,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/Dekkson.png"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.05,
                                ),
                                SizedBox(
                                  width: size.width * 0.5,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Mortise Locket Dekkson MTS ILDL84030 SSS",
                                        style: text3(neutral500, bold),
                                        overflow: TextOverflow.clip,
                                      ),
                                      const SizedBox(height: 10),
                                      Text.rich(TextSpan(
                                        text: "Rp. 294.000",
                                        style: text4(accentOrange400, semibold),
                                        children: [
                                          TextSpan(
                                              text: "/Rp. 15.000",
                                              style: text4(
                                                primary900,
                                                regular,
                                              ))
                                        ],
                                      )),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          const Icon(Icons.add_circle),
                                          const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text("1"),
                                          ),
                                          const Icon(Icons.remove_circle),
                                          const SizedBox(width: 10),
                                          Container(
                                            width: size.width * 0.2,
                                            padding: const EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              color: primary900,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Beli",
                                                style: text4(neutral100, bold),
                                                overflow: TextOverflow.clip,
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )),
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
        ],
      ),
    );
  }
}
