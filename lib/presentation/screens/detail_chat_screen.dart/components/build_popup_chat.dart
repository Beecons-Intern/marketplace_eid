import 'package:flutter/material.dart';

import '../../../../utilities/color.dart';
import '../../../../utilities/text_styles.dart';

class BuildPopupChat extends StatelessWidget {
  const BuildPopupChat({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.22,
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
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Icons.help_sharp,
                color: neutral500,
                size: 25,
              ),
              const SizedBox(width: 10),
              Text("Butuh Bantuan", style: text2(neutral500, regular))
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Icons.report,
                color: neutral500,
                size: 25,
              ),
              const SizedBox(width: 10),
              Text("Laporkan", style: text2(neutral500, regular))
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Icons.delete,
                color: neutral500,
                size: 25,
              ),
              const SizedBox(width: 10),
              Text("Hapus", style: text2(neutral500, regular))
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
