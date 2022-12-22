import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class CardProduk extends StatelessWidget {
  const CardProduk(
      {Key? key,
      required this.title,
      required this.color1,
      required this.color2,
      required this.batas})
      : super(key: key);

  final String title;
  final Color color1;
  final Color color2;
  final Color batas;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      // height: size.height * 0.3,
      width: size.width * 0.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: batas),
        color: neutral100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.02,
          ),
          SizedBox(
            width: size.width,
            height: size.height * 0.13,
            child: Image.asset("assets/images/toilet.png"),
          ),
          Container(
            height: size.height * 0.025,
            width: size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[
                    color1,
                    color2,
                  ]),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                title,
                style: const TextStyle(
                    fontSize: 11, color: neutral100, fontWeight: semibold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.01,
                ),
                SizedBox(
                  width: size.width * 0.35,
                  child: Text(
                    "Aerozen Shower Toilet CEAS5312 - HOE",
                    style: text3(neutral500, bold),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.008,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.storefront,
                      color: primary900,
                      size: 18,
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    SizedBox(
                      width: size.width * 0.3,
                      child: const Text(
                        "PT Wahana Duta Nusantara",
                        style: TextStyle(
                          fontSize: 11,
                          color: neutral200,
                          fontWeight: semibold,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.008,
                ),
                const Text(
                  "Rp. 55.240.000",
                  style: TextStyle(
                    color: neutral200,
                    fontSize: 12,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.005,
                ),
                RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "Rp. 55.120.000",
                        style:
                            TextStyle(color: neutral500, fontWeight: semibold),
                      ),
                      TextSpan(
                        text: " / unit",
                        style: TextStyle(
                          color: neutral200,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.025,
                ),
                Row(
                  children: [
                    const Icon(
                      IconlyBold.location,
                      color: primary900,
                      size: 18,
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    SizedBox(
                      width: size.width * 0.3,
                      child: const Text(
                        "DKI Jakarta",
                        style: TextStyle(
                          fontSize: 11,
                          color: neutral200,
                          fontWeight: semibold,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.002,
                ),
                Row(
                  children: [
                    const Icon(
                      IconlyBold.star,
                      color: accentYellow400,
                      size: 18,
                    ),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 11,
                          color: neutral200,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: " 4.7 | ",
                          ),
                          TextSpan(
                            text: " Terjual 40+",
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
