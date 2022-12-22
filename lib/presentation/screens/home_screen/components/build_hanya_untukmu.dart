import 'package:flutter/material.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

import '../../widget/card_produk.dart';

class BuildHanyaUntukmu extends StatelessWidget {
  const BuildHanyaUntukmu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.04, vertical: size.height * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hanya Untukmu",
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
          // Expanded(
          //   child: Padding(
          //     padding: const EdgeInsets.all(10.0),
          //     child:
          //   ),
          // ),
          GridView.builder(
            padding: EdgeInsets.symmetric(
                vertical: size.height * 0.01, horizontal: size.width * 0.05),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              childAspectRatio: 0.43,
              mainAxisSpacing: size.height * 0.03,
            ),
            itemCount: 5,
            itemBuilder: (context, index) {
              return const CardProduk(
                title: '',
                color1: neutral100,
                color2: neutral100,
                batas: neutral200,
              );
            },
          ),
        ],
      ),
    );
  }
}
