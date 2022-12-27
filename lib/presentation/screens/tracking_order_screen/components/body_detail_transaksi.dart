import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/presentation/screens/widget/rounded_button.dart';
import 'package:marketplace/presentation/screens/widget/rounded_container.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class DetailTransaksiScreen extends StatelessWidget {
  const DetailTransaksiScreen(
      {Key? key,
      required this.noResi,
      required this.produk,
      required this.tglPesan,
      required this.almtAsal,
      required this.tglKirim,
      required this.almtTujuan,
      required this.status})
      : super(key: key);
  final String noResi;
  final Image produk;
  final String tglPesan;
  final String almtAsal;
  final String tglKirim;
  final String almtTujuan;
  final String status;

  @override
  Widget build(BuildContext context) {
    List<StepperData> stepperData = [
      StepperData(
          iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(IconlyLight.document, color: Colors.white),
      )),
      StepperData(
          iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.wallet_giftcard, color: Colors.white),
      )),
      StepperData(
          iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.fire_truck_rounded, color: Colors.white),
      )),
      StepperData(
          iconWidget: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.check, color: Colors.white),
      )),
    ];

    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.04,
        vertical: size.height * 0.02,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.015,
          ),
          Text(
            "Informasi Barang",
            style: text3(neutral500, semibold),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          RoundedContainer(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: size.width * 0.02,
                horizontal: size.width * 0.03,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: size.width * 0.1,
                        backgroundColor: primary300,
                        // backgroundImage: AssetImage("assets/images/toilet.png"),
                        child: produk,
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Resi",
                            style: text3(neutral500, regular),
                          ),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          Text(
                            noResi,
                            style: text3(neutral500, semibold),
                          )
                        ],
                      ),
                      SizedBox(
                        width: size.width * 0.18,
                      ),
                      Text(
                        status,
                        style: text3(primary, bold),
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                    ],
                  ),

                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  //timeline
                  AnotherStepper(
                    stepperList: stepperData,
                    stepperDirection: Axis.horizontal,
                    iconHeight: size.height * 0.05,
                    activeIndex: 1,
                    activeBarColor: primary,
                  ),

                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tglPesan,
                            style: text3(neutral300, semibold),
                          ),
                          SizedBox(
                            height: size.height * 0.008,
                          ),
                          Text(
                            almtAsal,
                            style: text3(neutral500, semibold),
                          ),
                        ],
                      ),
                      const Icon(
                        IconlyLight.arrowRight,
                      ),
                      SizedBox(
                        width: size.width * 0.3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tglKirim,
                              style: text3(neutral300, semibold),
                            ),
                            SizedBox(
                              height: size.height * 0.008,
                            ),
                            Text(
                              almtTujuan,
                              style: text3(neutral500, semibold),
                              maxLines: 2,
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Image.asset("assets/images/barcode.png")
                ],
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.3,
          ),
          RoundedButton(
            text: "Simpan",
            ontap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
