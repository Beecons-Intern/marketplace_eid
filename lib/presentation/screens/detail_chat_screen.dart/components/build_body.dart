import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
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
        Expanded(
          child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) => Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: size.width * 0.6,
                      margin: const EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.015,
                          horizontal: size.width * 0.05),
                      decoration: BoxDecoration(
                          color: neutral100,
                          boxShadow: const [
                            BoxShadow(
                              color: neutral200,
                              blurRadius: 60,
                              offset: Offset(4, 8),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Selamat pagi kak, mau bertanya apakah produk masih ada ?",
                        style: text4(neutral500, regular),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: size.width * 0.6,
                      margin: const EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(
                          vertical: size.height * 0.015,
                          horizontal: size.width * 0.05),
                      decoration: BoxDecoration(
                          color: primary200,
                          boxShadow: const [
                            BoxShadow(
                              color: neutral200,
                              blurRadius: 60,
                              offset: Offset(4, 8),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        "Selamat pagi, barang ready kak",
                        style: text4(neutral500, regular),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                buildItemChat(size, "Apakah barang ready..."),
                buildItemChat(size, "Bisa dikirim hari ini ?"),
                buildItemChat(size, "Terimakasih kak."),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: FormBuilderTextField(
                  name: 'chat',
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: Image.asset(
                      "assets/icon/icon-chat.png",
                      color: neutral500,
                      scale: 0.6,
                    ),
                    suffixIcon: const Icon(
                      IconlyLight.plus,
                      color: neutral500,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    IconlyLight.send,
                    color: neutral500,
                    size: 35,
                  ))
            ],
          ),
        ),
      ],
    );
  }

  Widget buildItemChat(Size size, String text) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
      decoration: BoxDecoration(
        border: Border.all(color: neutral200),
        borderRadius: BorderRadius.circular(5),
        color: neutral100,
      ),
      child: Text(
        text,
        style: text4(neutral500, regular),
      ),
    );
  }
}
