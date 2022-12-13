import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/presentation/screens/keranjang_screen/components/build_listview.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class BuildBody extends StatefulWidget {
  const BuildBody({super.key});

  @override
  State<BuildBody> createState() => _BuildBodyState();
}

class _BuildBodyState extends State<BuildBody> {
  bool isChecked = false;
  int? isSleceted;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: neutral200),
            borderRadius: BorderRadius.circular(10),
          ),
          child: FormBuilderTextField(
            name: 'search',
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              hintText: 'Cari',
              hintStyle: text2(neutral300, regular),
              prefixIcon: const Icon(
                IconlyLight.search,
                color: neutral300,
              ),
              border: InputBorder.none,
              fillColor: neutral300,
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                BuildListview(
                  size: size,
                  count: 2,
                  kategori: "American Standard",
                  text: 'Aerozen Shower Toilet CEAS5312-1000422CO',
                  images: "assets/images/toilet.png",
                ),
                BuildListview(
                  size: size,
                  count: 1,
                  kategori: "Dekkson",
                  text: 'Aerozen Shower Toilet CEAS5312-1000422CO',
                  images: "assets/images/toilet.png",
                ),
                BuildListview(
                  size: size,
                  count: 1,
                  kategori: "Dekkson22",
                  text: 'Aerozen Shower Toilet CEAS5312-1000422CO',
                  images: "assets/images/toilet.png",
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildListView(
      Size size, String kategori, String title, String images) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
          child: Text(
            kategori,
            style: text3(neutral500, semibold),
          ),
        ),
        const Divider(thickness: 2, color: neutral200),
        ListView.builder(
          itemCount: 1,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    Image.asset(images, width: size.width * 0.18),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: size.width * 0.4,
                          child: Text(
                            title,
                            style: text3(neutral500, regular),
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                if (isSleceted == null) {
                                  isSleceted = index;
                                } else {
                                  isSleceted = null;
                                }
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: size.width * 0.03),
                              child: isSleceted != null && isSleceted == index
                                  ? const Icon(
                                      Icons.favorite,
                                      color: accentOrange500,
                                    )
                                  : const Icon(Icons.favorite_border),
                            ))
                      ],
                    ),
                    SizedBox(height: size.height * 0.01),
                    Text.rich(
                      TextSpan(
                        text: 'Rp. 29.000/',
                        style: text3(primary900, regular),
                        children: [
                          TextSpan(
                              text: 'buah', style: text3(neutral200, regular))
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Image.asset('assets/icon/plus-circle.png'),
                            ),
                            SizedBox(width: size.width * 0.02),
                            Text(
                              "1",
                              style: text4(neutral300, regular),
                            ),
                            SizedBox(width: size.width * 0.02),
                            GestureDetector(
                              onTap: () {},
                              child:
                                  Image.asset('assets/icon/minus-circle.png'),
                            )
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              IconlyBold.delete,
                              color: accentOrange500,
                            ))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
