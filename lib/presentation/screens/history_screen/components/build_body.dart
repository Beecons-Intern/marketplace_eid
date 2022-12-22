import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/presentation/screens/history_screen/components/build_listview_dibatalkan.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

import 'build_listview_selesai.dart';

class BuildBody extends StatefulWidget {
  const BuildBody({super.key});

  @override
  State<BuildBody> createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
  int indexPages = 0;
  int indexOptions = 0;

  List<List> options = [
    [
      "Selesai",
      "Dibatalkan",
    ],
    [
      "Dinding",
      "Elektrikal",
      "Lantai",
      "Mekanikal",
      "Pintu dan Jendela",
      "Plafon dan Atap",
      "Plumbing",
      "Sanitari",
    ],
    [
      "Semua Tanggal Transaksi",
      "7 Hari Terakhir",
      "30 Hari Terakhir",
      "60 Hari Terakhir",
      "90 Hari Terakhir",
    ],
  ];

  List<Widget> pages = [
    const BuildListviewSelesai(),
    const BuildListviewDibatalkan(),
    const BuildListviewSelesai(),
    const BuildListviewDibatalkan(),
    const BuildListviewSelesai(),
    const BuildListviewDibatalkan(),
    const BuildListviewSelesai(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Row(
              children: [
                buildmenuItem(
                    "Mau lihat Status Apa ?", 0, "Semua Status", size),
                buildmenuItem(
                    "Mau lihat produk apa ?", 1, "Semua Product", size),
                buildmenuItem("Pilih Tanggal", 2, "Semua Tanggal", size),
              ],
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Expanded(
          child: pages[indexPages],
        )
      ],
    );
  }

  Widget buildmenuItem(String kategori, int index, String title, Size size) {
    return GestureDetector(
      onTap: () {
        setState(() {
          indexOptions = index;
        });
        showBottomSheet(
          context: context,
          builder: (context) {
            return StatefulBuilder(
              builder: (context, setState) => Container(
                  height: size.height * 0.47,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: neutral300,
                          blurRadius: 24,
                          offset: Offset(4, 8),
                        ),
                      ],
                      color: neutral100,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.dangerous,
                              color: neutral300,
                              size: 35,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.02,
                          ),
                          Text(
                            kategori,
                            style: text2(neutral300, bold),
                          )
                        ],
                      ),
                      Expanded(
                        child: ListView.separated(
                          separatorBuilder: (context, index) => const Divider(
                            thickness: 2,
                            color: neutral200,
                          ),
                          itemCount: options[indexOptions].length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                const SizedBox(height: 10),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      indexPages = index;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(options[indexOptions][index],
                                            style: text3(neutral500, regular)),
                                        indexPages == index
                                            ? const Icon(
                                                Icons.done,
                                                color: primary900,
                                                size: 30,
                                              )
                                            : const Text(""),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  )),
            );
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        margin:
            EdgeInsets.symmetric(horizontal: size.width * 0.01, vertical: 5),
        decoration: BoxDecoration(
            border: Border.all(
                color: indexOptions == index ? primary900 : neutral500),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Text(
              title,
              style: text4(
                  indexOptions == index ? primary900 : neutral500, regular),
            ),
            const SizedBox(width: 10),
            const Icon(
              IconlyLight.arrowDown2,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
