import 'package:flutter/material.dart';

import '../../../../utilities/color.dart';
import '../../../../utilities/text_styles.dart';

class BuildFilter extends StatelessWidget {
  const BuildFilter({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.25,
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
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
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
              Text("Filter", style: text2(neutral400, bold))
            ],
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Semua", style: text3(neutral500, regular)),
                const Icon(
                  Icons.done,
                  color: primary900,
                  size: 30,
                ),
              ],
            ),
          ),
          const Divider(thickness: 1, color: neutral200),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Belum Dibaca", style: text3(neutral500, regular)),
                const Icon(
                  Icons.done,
                  color: primary900,
                  size: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
