import 'package:flutter/material.dart';
import 'package:marketplace/presentation/screens/order_product_screen/components/build_pin.dart';

import '../../../../utilities/color.dart';
import '../../../../utilities/text_styles.dart';

class BuildPembayaran extends StatefulWidget {
  const BuildPembayaran({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<BuildPembayaran> createState() => _BuildPembayaranState();
}

class _BuildPembayaranState extends State<BuildPembayaran> {
  int selectedItem = 0;
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
    return ListTile(
      onTap: () {
        showBottomSheet(
          context: context,
          builder: (context) => Container(
            height: widget.size.height * 0.4,
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
                    topRight: Radius.circular(30))),
            child: ListView.builder(
                itemCount: iconPayment.length,
                itemBuilder: (context, index) => ListTile(
                      onTap: () {
                        showBottomSheet(
                          context: context,
                          builder: (context) => Container(
                            height: widget.size.height * 0.4,
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
                                    topRight: Radius.circular(30))),
                            child: Stack(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Radio(
                                      fillColor: MaterialStateColor.resolveWith(
                                          (states) => primary900),
                                      value: selectedItem,
                                      groupValue: index,
                                      onChanged: (int? value) {
                                        setState(() {
                                          selectedItem = value!;
                                        });
                                      },
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 15),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                  "assets/images/BCA.png"),
                                              SizedBox(
                                                  width:
                                                      widget.size.width * 0.04),
                                              Text(
                                                "BCA",
                                                style:
                                                    text2(neutral500, regular),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            height: widget.size.height * 0.01),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Masukan Nomor Kartu",
                                            style: text3(neutral300, regular),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(10),
                                          width: widget.size.width * 0.75,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: primary900, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Text(
                                            "12356788747464646",
                                            style: text3(neutral500, regular),
                                          ),
                                        ),
                                        SizedBox(
                                            height: widget.size.height * 0.01),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "Masukan Nomor Telepon",
                                            style: text3(neutral300, regular),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.all(10),
                                          width: widget.size.width * 0.75,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: primary900, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Text(
                                            "081212345678",
                                            style: text3(neutral500, regular),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
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
                                      width: widget.size.width,
                                      decoration: BoxDecoration(
                                        color: primary900,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Lanjutkan",
                                          style: text2(neutral100, regular),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      leading: Radio(
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => primary900),
                        value: selectedItem,
                        groupValue: index,
                        onChanged: (int? value) {
                          setState(() {
                            selectedItem = value!;
                          });
                        },
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: widget.size.width * 0.18,
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
                    )),
          ),
        );
      },
      title: Text(
        "Metode Pembayaran",
        style: text3(neutral500, regular),
        overflow: TextOverflow.clip,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
