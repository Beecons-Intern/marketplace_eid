import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketplace/presentation/routes/page_name.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class BuildBody extends StatefulWidget {
  const BuildBody({super.key});

  @override
  State<BuildBody> createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
  int selectedIndex = 0;
  List<String> itemImages = [
    "assets/images/Rectangle 2.png",
    "assets/images/Rectangle 3.png",
    "assets/images/Rectangle 4.png",
    "assets/images/Rectangle 5.png",
    "assets/images/Rectangle 31.png",
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // courousel
        Container(
          width: size.width,
          height: size.height * 0.40,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(10),
          child: Image.asset(
            "assets/images/toilet.png",
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.height * 0.02),
          child: SizedBox(
            height: size.height * 0.09,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: itemImages.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  width: size.width * 0.16,
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color:
                              selectedIndex == index ? primary900 : neutral300),
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage(itemImages[index]),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
          ),
        ),

        //title
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: size.height * 0.03, vertical: size.height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Aerozone Shower Toilet",
                style: text2(neutral500, semibold),
              ),
              Row(
                children: [
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
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      ratingWidget: RatingWidget(
                          full: SvgPicture.asset("assets/icon/star_active.svg"),
                          half: SvgPicture.asset("assets/icon/star_active.svg"),
                          empty: SvgPicture.asset(
                              "assets/icon/star_disactive.svg")),
                      onRatingUpdate: (rating) {
                        //   ratingPenggunaViewModel.rating = rating.toString()[0];
                      }),
                  Text.rich(TextSpan(
                      text: "4.5",
                      style: text4(neutral500, bold),
                      children: [
                        TextSpan(
                            text: " (20 ulasan)",
                            style: text4(neutral300, regular))
                      ]))
                ],
              ),
              SizedBox(height: size.height * 0.01),
              Text(
                "Rp. 3.050.395,00",
                style: text1(primary900, semibold),
              )
            ],
          ),
        ),

        //PT American Standard
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: neutral200),
              borderRadius: BorderRadius.circular(5)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  maxRadius: 20,
                  minRadius: 20,
                  backgroundColor: neutral100,
                  child: Image.asset("assets/images/profile-perusahaan.png"),
                ),
                SizedBox(width: size.width * 0.04),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PT. American Standard",
                      style: text3(neutral400, regular),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: neutral200,
                          size: 20,
                        ),
                        SizedBox(width: size.width * 0.02),
                        Text(
                          "Jakarta Pusat",
                          style: text4(neutral200, regular),
                        ),
                        SizedBox(width: size.width * 0.02),
                        Text(
                          "98% rating toko",
                          style: text4(neutral200, regular),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: size.width * 0.16,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: primary900,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "ikuti",
                  style: text4(neutral100, regular),
                ),
              ),
            )
          ]),
        ),
        SizedBox(height: size.height * 0.04),

        Expanded(
          child: Container(
            padding: const EdgeInsets.all(25),
            decoration: const BoxDecoration(
              color: neutral100,
              boxShadow: [
                BoxShadow(
                  color: neutral300,
                  blurRadius: 24,
                  offset: Offset(4, 8),
                ),
              ],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, RouteName.chat);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.02, vertical: 5),
                          decoration: BoxDecoration(
                            border: Border.all(color: neutral300),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Icon(IconlyLight.chat),
                        ),
                      ),
                      SizedBox(width: size.width * 0.05),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, RouteName.keranjang);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.02, vertical: 5),
                          decoration: BoxDecoration(
                            border: Border.all(color: neutral300),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Icon(IconlyLight.buy),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      showBottomSheet(
                        context: context,
                        builder: (context) => Container(
                          height: size.height * 0.45,
                          width: size.width,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          decoration: const BoxDecoration(
                            color: neutral100,
                            boxShadow: [
                              BoxShadow(
                                color: neutral300,
                                blurRadius: 24,
                                offset: Offset(4, 8),
                              ),
                            ],
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                      "assets/images/garis-bottom-sheet.png"),
                                ),
                              ),
                              Text(
                                "Warna",
                                style: text2(neutral500, regular),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: size.width * 0.1,
                                    height: size.height * 0.06,
                                    decoration: BoxDecoration(
                                        color: neutral100,
                                        border: Border.all(
                                            color: neutral200, width: 2),
                                        shape: BoxShape.circle),
                                  ),
                                  SizedBox(width: size.width * 0.05),
                                  Container(
                                    width: size.width * 0.1,
                                    height: size.height * 0.06,
                                    decoration: BoxDecoration(
                                        color: neutral500,
                                        border: Border.all(
                                            color: neutral200, width: 2),
                                        shape: BoxShape.circle),
                                  )
                                ],
                              ),
                              SizedBox(height: size.height * 0.01),
                              Text(
                                "Variasi",
                                style: text2(neutral500, regular),
                              ),
                              Column(
                                children: [
                                  SizedBox(height: size.height * 0.02),
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: neutral200),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Text("CEAS5312-1000422CO"),
                                      ),
                                      SizedBox(width: size.width * 0.04),
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: neutral200),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Text("CEAS5312-1000422CO"),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: size.height * 0.01),
                                  Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: neutral200),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Text("CEAS5312-1000422CO"),
                                      ),
                                      SizedBox(width: size.width * 0.04),
                                      Container(
                                        padding: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          border: Border.all(color: neutral200),
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        child: Text("CEAS5312-1000422CO"),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: size.height * 0.01),
                              Text(
                                "Kuantitas",
                                style: text2(neutral500, regular),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add_circle,
                                      color: neutral200,
                                      size: 30,
                                    ),
                                  ),
                                  Text(
                                    "1",
                                    style: heading5(neutral500, bold),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add_circle,
                                      color: neutral200,
                                      size: 30,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: size.height * 0.025),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, RouteName.chat);
                                            },
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: size.width * 0.02,
                                                  vertical: 5),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: neutral300),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child:
                                                  const Icon(IconlyLight.chat),
                                            ),
                                          ),
                                          SizedBox(width: size.width * 0.05),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(context,
                                                  RouteName.orderProduct);
                                            },
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: size.width * 0.02,
                                                  vertical: 5),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: neutral300),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child:
                                                  const Icon(IconlyLight.buy),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, RouteName.orderProduct);
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                            color: primary900,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "Beli Sekarang",
                                              style: text2(neutral100, bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: primary900,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "Beli Sekarang",
                          style: text2(neutral100, bold),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
