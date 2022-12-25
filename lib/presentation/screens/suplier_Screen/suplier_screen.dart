import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketplace/presentation/screens/widget/search.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

import 'components/build_body.dart';

class SuplierScreen extends StatelessWidget {
  const SuplierScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
              )),
          title: const Searching(),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(size.height * 0.13),
            child: Container(
              width: size.width * 0.9,
              margin: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/avatars.png"),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "PT Maju Jaya Bangun",
                            style: text2(neutral100, regular),
                          ),
                          SizedBox(height: size.height * 0.01),
                          RatingBar(
                              minRating: 0,
                              maxRating: 5,
                              initialRating: 0,
                              glowColor: accentYellow500,
                              // initialRating: ratingPenggunaViewModel.dataRatingPengguna != null
                              //     ? double.parse(
                              //         "${ratingPenggunaViewModel.dataRatingPengguna!.rating}.0")
                              //     : 0,
                              allowHalfRating: false,
                              itemCount: 5,
                              itemSize: 12,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 4.0),
                              ratingWidget: RatingWidget(
                                  full: SvgPicture.asset(
                                      "assets/icon/star_active.svg"),
                                  half: SvgPicture.asset(
                                      "assets/icon/star_active.svg"),
                                  empty: SvgPicture.asset(
                                      "assets/icon/star_disactive.svg")),
                              onRatingUpdate: (rating) {
                                //   ratingPenggunaViewModel.rating = rating.toString()[0];
                              }),
                          SizedBox(height: size.height * 0.01),
                          Row(
                            children: [
                              Text(
                                "Online",
                                style: text4(primary900, regular),
                              ),
                              SizedBox(width: size.width * 0.05),
                              Text(
                                "89.000 followers",
                                style: text4(neutral100, regular),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: size.width * 0.15,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(color: neutral100),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(IconlyLight.plus,
                                size: 12, color: neutral100),
                            Text(
                              "ikuti",
                              style: text4(neutral100, regular),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Container(
                        width: size.width * 0.15,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          border: Border.all(color: neutral100),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(IconlyLight.chat,
                                size: 12, color: neutral100),
                            Text(
                              "chat",
                              style: text4(neutral100, regular),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(IconlyLight.filter),
            ),
          ],
          flexibleSpace: SizedBox(
            height: size.height,
            child: Image.asset(
              "assets/images/background.png",
              fit: BoxFit.cover,
            ),
          )),
      body: const BuildBody(),
    );
  }
}
