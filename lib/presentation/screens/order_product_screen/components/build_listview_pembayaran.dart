import 'package:flutter/material.dart';

import '../../../../utilities/color.dart';
import '../../../../utilities/text_styles.dart';

class BuildListviewPembayaran extends StatefulWidget {
  const BuildListviewPembayaran({super.key});

  @override
  State<BuildListviewPembayaran> createState() =>
      _BuildListviewPembayaranState();
}

class _BuildListviewPembayaranState extends State<BuildListviewPembayaran> {
  List<dynamic> iconPayment = [
    [
      "assets/images/BCA.png",
      "BCA",
      "Tambahkan Kartu",
    ],
    [
      "assets/images/bri.png",
      "BRI Debit",
      "BRI *****",
    ],
    [
      "assets/images/dana.png",
      "Dana",
      "",
    ],
    [
      "assets/images/qris.png",
      "QRIS",
      "",
    ]
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: iconPayment.length,
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          setState(() {});
        },
        leading: Radio(
          fillColor: MaterialStateColor.resolveWith((states) => primary900),
          value: 1,
          groupValue: index,
          onChanged: (int? value) {
            setState(() {});
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width * 0.18,
              child: Image.asset(iconPayment[index][0]),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  iconPayment[index][1],
                  style: text2(neutral500, regular),
                ),
                Text(
                  iconPayment[index][2],
                  style: text3(neutral500, regular),
                ),
              ],
            ),
          ],
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
