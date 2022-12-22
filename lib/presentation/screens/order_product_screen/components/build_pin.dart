import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:marketplace/utilities/text_styles.dart';

import '../../../../utilities/color.dart';

class BuildPin extends StatelessWidget {
  const BuildPin({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.4,
      width: size.width,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: neutral500,
            blurRadius: 24,
            offset: Offset(4, 8),
          ),
        ],
        color: neutral100,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * 0.03),
            child: Text(
              "Masukan Pin",
              style: text3(neutral500, regular),
            ),
          ),
          Center(
            child: SizedBox(
              height: size.height * 0.08,
              width: size.width * 0.8,
              child: ListView.builder(
                itemCount: 6,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(5),
                    width: size.width * 0.11,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: neutral300)),
                    child: TextFormField(
                      style: text1(neutral500, regular),
                      maxLines: 1,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        counter: SizedBox.shrink(),
                        border: InputBorder.none,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            right: 5,
            left: 5,
            bottom: 5,
            child: GestureDetector(
              onTap: () {
                showBottomSheet(
                  context: context,
                  builder: (context) => const BuildPin(),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                width: size.width,
                decoration: BoxDecoration(
                  color: primary900,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Selesai",
                    style: text2(neutral100, regular),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
