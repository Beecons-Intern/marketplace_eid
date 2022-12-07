import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class BuildBody extends StatefulWidget {
  const BuildBody({super.key});

  @override
  State<BuildBody> createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
  int selectedItem = 0;
  bool isChecked = false;
  int? isActive;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    int indexing = 0;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                buildScrollItem("Urutan", IconlyLight.arrowDown2, 0),
                buildScrollItem("Penawran", IconlyLight.arrowDown2, 1),
                buildScrollItem("Stok", IconlyLight.arrowDown2, 2),
                buildScrollItem("Kategori", IconlyLight.arrowDown2, 3),
                buildScrollItem("Barang", IconlyLight.arrowDown2, 4),
              ],
            ),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "3 Barang",
                style: text3(neutral500, regular),
              ),
              TextButton(
                  onPressed: () {
                    if (isActive == null) {
                      setState(() {
                        isActive = indexing;
                      });
                    } else if (isActive != null && isActive == indexing) {
                      setState(() {
                        isActive = null;
                      });
                    }
                  },
                  child: Text(
                    "Atur",
                    style: text3(primary900, semibold),
                  ))
            ],
          ),
        ),
        const Divider(color: neutral200, thickness: 3),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                childAspectRatio: 0.43,
                mainAxisSpacing: 16,
              ),
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: neutral200),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: size.height * 0.05),
                            child: Center(
                              child: Image.asset('assets/images/toilet.png'),
                            ),
                          ),
                          if (isActive != null && isActive == indexing) ...[
                            Positioned(
                              top: 5,
                              right: 5,
                              child: Checkbox(
                                value: isChecked,
                                activeColor: primary900,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                              ),
                            )
                          ]
                        ],
                      ),
                      const Divider(thickness: 3, color: primary900),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Aerozen Shower Toilet CEAS5312 - 1000422CO",
                          style: text3(neutral500, bold),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            const Icon(
                              IconlyBroken.home,
                              color: primary900,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "PT Wahana Duta Jayaa..",
                              style: text4(neutral300, regular),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Rp. 55.120.000 / unit",
                          style: text3(neutral400, bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            const Icon(
                              IconlyBroken.location,
                              color: primary900,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "DKI Jakarta",
                              style: text4(neutral300, regular),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 4),
                        child: Row(
                          children: [
                            const Icon(
                              IconlyBold.star,
                              color: accentYellow200,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "4.7 | Terjual 40+",
                              style: text4(neutral300, regular),
                            )
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          width: size.width,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              border: Border.all(color: primary900),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              "+ Keranjang",
                              style: text4(primary900, regular),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
        if (isActive != null && isActive == indexing) ...[
          Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: primary900,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                "Hapus",
                style: text4(neutral100, regular),
              ),
            ),
          )
        ]
      ],
    );
  }

  buildScrollItem(String name, IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItem = index;
        });
        buildBottomSheet(index);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 5),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            border: Border.all(
                color: selectedItem == index ? primary900 : neutral300),
            borderRadius: BorderRadius.circular(10)),
        height: 40,
        child: Row(
          children: [
            Text(
              name,
              style: text4(neutral500, regular),
            ),
            Icon(
              icon,
              size: 20,
              color: selectedItem == index ? primary900 : neutral300,
            )
          ],
        ),
      ),
    );
  }

  buildBottomSheet(int index) {
    return showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 350,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                color: neutral100,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.cancel_sharp,
                      color: neutral200,
                      size: 25,
                    ),
                    const SizedBox(width: 10),
                    Text("Urutkan", style: text2(neutral500, regular))
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Ulasan Terbanyak",
                          style: text2(neutral500, regular)),
                      const Icon(
                        Icons.done,
                        color: primary900,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                const Divider(thickness: 2, color: neutral200),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Harga Tertinggi",
                          style: text2(neutral500, regular)),
                      const Icon(
                        Icons.done,
                        color: primary900,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                const Divider(thickness: 2, color: neutral200),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Harga Terendah", style: text2(neutral500, regular)),
                      const Icon(
                        Icons.done,
                        color: primary900,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                const Divider(thickness: 2, color: neutral200),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Pembelian Terbanyak",
                          style: text2(neutral500, regular)),
                      const Icon(
                        Icons.done,
                        color: primary900,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                const Divider(thickness: 2, color: neutral200)
              ],
            ),
          );
        });
  }
}