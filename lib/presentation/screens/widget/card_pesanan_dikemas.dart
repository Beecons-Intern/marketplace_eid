import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class CardPesananSaya extends StatelessWidget {
  const CardPesananSaya(
      {Key? key,
      required this.tanggalPesan,
      required this.tanggalBayar,
      required this.totalBayar,
      required this.produk,
      required this.namaproduk,
      required this.jumlah,
      required this.tombol, required this.status})
      : super(key: key);

  final String tanggalPesan;
  final String tanggalBayar;
  final String totalBayar;
  final Image produk;
  final String namaproduk;
  final String jumlah;
  final String status;
  final Widget tombol;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      // width: size.width * 0.7,
      height: size.height * 0.32,
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.03),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: neutral200),
        color: neutral100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  IconlyLight.wallet,
                  color: primary,
                ),
                SizedBox(width: size.width * 0.1),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Belanja",
                      style: text3(neutral500, bold),
                    ),
                    SizedBox(height: size.height * 0.005),
                    Text(
                      tanggalPesan,
                      style: text4(neutral400, regular),
                    ),
                  ],
                ),
                SizedBox(width: size.width * 0.15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dkirim sebelum",
                      style: text4(neutral400, bold),
                    ),
                    SizedBox(height: size.height * 0.005),
                    Row(
                      children: [
                        const Icon(
                          IconlyLight.timeCircle,
                          color: accentYellow500,
                          size: 18,
                        ),
                        SizedBox(width: size.width * 0.01),
                        Text(
                          tanggalPesan,
                          style: text4(accentYellow500, regular),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: neutral200,
          ),
          SizedBox(height: size.height * 0.01),
          Row(
            children: [
              // Image.asset("assets/images/BCA.png"),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: neutral200),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: produk,
              ),
              SizedBox(
                width: size.width * 0.05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    namaproduk,
                    style: text3(neutral400, bold),
                  ),
                  Text(jumlah),
                ],
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Pembayaran",
                style: text4(neutral400, semibold),
              ),
              Text(
                totalBayar,
                style: text4(neutral500, bold),
              ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Text(
              //       "Total Pembayaran",
              //       style: text4(neutral400, semibold),
              //     ),
              //     SizedBox(
              //       height: size.height * 0.008,
              //     ),
              //     Text(
              //       totalBayar,
              //       style: text4(neutral500, bold),
              //     ),
              //   ],
              // ),
            ],
          ),
          Divider(
            thickness: 1,
            height: size.height * 0.03,
            color: neutral200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                status,
                style: text4(primary, regular),
              ),
              tombol,

              // Container(
              //   width: size.width * 0.4,
              //   height: size.height * 0.04,
              //   decoration: BoxDecoration(
              //     border: Border.all(
              //       color: primary,
              //     ),
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   child: const Padding(
              //     padding: EdgeInsets.all(5.0),
              //     child: Text(
              //       "Lihat Cara Bayar",
              //       textAlign: TextAlign.center,
              //     ),
              //   ),
              // ),
            ],
          )
        ],
      ),
    );
  }
}
