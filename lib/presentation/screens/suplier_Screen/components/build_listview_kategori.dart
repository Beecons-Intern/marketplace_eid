import 'package:flutter/material.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class BuildListviewKategori extends StatelessWidget {
  const BuildListviewKategori({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    List<String> kategori = [
      "Diskon",
      "Toilet",
      "Keramik",
      "Wastafel Kabinet",
      "Keran Tembok",
      "Kitchen Sink",
      "Shower Set",
    ];

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: kategori.length,
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(vertical: 5),
              decoration: const BoxDecoration(color: neutral100, boxShadow: [
                BoxShadow(
                  color: neutral300,
                  blurRadius: 2,
                  offset: Offset(1, 2),
                ),
              ]),
              child: ListTile(
                leading: Container(
                    width: size.width * 0.15,
                    height: size.height * 0.08,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/avatar.jpg"),
                          fit: BoxFit.cover,
                        ))),
                title: Text(
                  kategori[index],
                  style: text3(neutral500, regular),
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
