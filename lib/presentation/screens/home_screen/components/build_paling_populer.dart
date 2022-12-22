import 'package:flutter/material.dart';
import 'package:marketplace/presentation/routes/page_name.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

import '../../widget/card_produk.dart';

class BuildPalingPopuler extends StatelessWidget {
  const BuildPalingPopuler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.04, vertical: size.height * 0.01),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Paling Populer",
                style: text3(neutral500, bold),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Lihat Semua",
                  style: text4(primary, semibold),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: size.height * 0.45,
          width: size.width,
          decoration: const BoxDecoration(
            color: primary,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
          ),
          margin: EdgeInsets.only(left: size.width * 0.05),
          padding: EdgeInsets.only(left: size.width * 0.05),
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
                      Navigator.pushNamed(context, RouteName.detailProduk);
                    },
                    child: const CardProduk(
                      color1: Color.fromARGB(255, 140, 10, 10),
                      color2: Color.fromARGB(255, 209, 99, 99),
                      batas: Colors.transparent,
                      title: " Produk Populer",
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
