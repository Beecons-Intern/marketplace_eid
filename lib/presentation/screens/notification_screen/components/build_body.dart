import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class BuildBody extends StatelessWidget {
  const BuildBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            buildMenuItem(size, 'Transaksi'),
            buildMenuItem(size, 'Promo'),
            buildMenuItem(size, 'Info'),
          ],
        ),
        Expanded(
            child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Flexible(
                    flex: 1,
                    child: Center(
                      child: Icon(
                        IconlyLight.discount,
                        size: 60,
                        color: accentYellow500,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Promo",
                              style: text4(neutral200, regular),
                            ),
                            Text(
                              "4 hari yang lalu",
                              style: text4(neutral200, regular),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Ada Promo diskon 30 %",
                          style: text3(neutral500, semibold),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras vitae id ultrices facilisi nulla interdum.",
                          style: text3(neutral200, regular),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ))
      ],
    );
  }

  Widget buildMenuItem(Size size, String title) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.02, vertical: size.height * 0.02),
      decoration: BoxDecoration(
          border: Border.all(color: neutral200),
          borderRadius: BorderRadius.circular(10)),
      child: Text(
        title,
        style: text4(neutral300, regular),
      ),
    );
  }
}
