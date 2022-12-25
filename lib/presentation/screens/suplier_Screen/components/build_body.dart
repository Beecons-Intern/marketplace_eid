import 'package:flutter/material.dart';
import 'package:marketplace/presentation/screens/suplier_Screen/components/build_listview_kategori.dart';
import 'package:marketplace/presentation/screens/suplier_Screen/components/build_listview_produk.dart';
import 'package:marketplace/presentation/screens/suplier_Screen/components/build_listview_toko.dart';
import 'package:marketplace/presentation/screens/suplier_Screen/components/build_profile_toko.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class BuildBody extends StatefulWidget {
  const BuildBody({super.key});

  @override
  State<BuildBody> createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
  int selectedItem = 0;
  List<String> itemMenu = [
    "Toko",
    "Produk",
    "Kategori",
    "Detail",
  ];

  List pages = <Widget>[
    const BuildLIstviewToko(),
    const BUildListviewProduk(),
    const BuildListviewKategori(),
    const BuildProfileToko(),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.065,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: itemMenu.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedItem = index;
                });
              },
              child: Container(
                width: size.width * 0.25,
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      itemMenu[index],
                      style: text3(neutral500, regular),
                    ),
                    selectedItem == index
                        ? const Divider(
                            thickness: 2,
                            color: neutral300,
                          )
                        : const SizedBox()
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(child: pages[selectedItem])
      ],
    );
  }
}
