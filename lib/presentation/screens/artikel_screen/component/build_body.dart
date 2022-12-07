import 'package:flutter/material.dart';
import 'package:marketplace/presentation/routes/page_name.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class BuildBody extends StatelessWidget {
  const BuildBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () =>
              Navigator.pushNamed(context, RouteName.detailArtikelScreen),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: 10, horizontal: size.width * 0.05),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: size.width * 0.5,
                      child: Text(
                        "7 Merk Semen Pilihan Terbaik di Indonesia untuk bangun rumah Impian",
                        style: text3(neutral500, regular),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 75,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                            image: NetworkImage('https://picsum.photos/200'),
                            fit: BoxFit.cover),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Dinding",
                      style: text3(primary900, regular),
                    ),
                    const Icon(
                      Icons.share,
                      color: neutral300,
                      size: 20,
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => const Divider(
        color: neutral200,
      ),
    );
  }
}
