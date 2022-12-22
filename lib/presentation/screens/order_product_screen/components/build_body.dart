import 'package:flutter/material.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

import 'build_pembayaran.dart';
import 'build_pengiriman.dart';

class BuildBody extends StatelessWidget {
  const BuildBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              onTap: () {},
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Alamat Pengiriman",
                    style: text3(neutral500, semibold),
                    overflow: TextOverflow.clip,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "Ayu Anjani (+628112345678)",
                    style: text3(neutral500, regular),
                    overflow: TextOverflow.clip,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Jl. jalan no.134, RT.11/RW.8, Semaki, umbulharjo (depan indomaret)",
                    style: text3(neutral500, regular),
                    overflow: TextOverflow.clip,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "DI yogyakarta, Kota Yogyakarta, Umbulharjo (55166)",
                    style: text3(neutral500, regular),
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
              trailing: const SizedBox(
                height: double.infinity,
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),
            const Divider(thickness: 2, color: neutral200),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    flex: 1,
                    child:
                        Center(child: Image.asset("assets/images/toilet.png")),
                  ),
                  Flexible(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Aerozen Shower Toilet CEAS5312-1000422CO",
                          style: text3(neutral500, semibold),
                          overflow: TextOverflow.clip,
                        ),
                        SizedBox(height: size.height * 0.04),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "L710 x W265 x H766mm",
                              style: text3(neutral500, regular),
                              overflow: TextOverflow.clip,
                            ),
                            Text(
                              "1x",
                              style: text3(neutral500, regular),
                              overflow: TextOverflow.clip,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Divider(thickness: 2, color: neutral200),
            ListTile(
              onTap: () {},
              title: Text(
                "Promo",
                style: text3(neutral500, regular),
                overflow: TextOverflow.clip,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(thickness: 2, color: neutral200),
            BuildPengiriman(size: size),
            const Divider(thickness: 2, color: neutral200),
            BuildPembayaran(size: size),
            const Divider(thickness: 2, color: neutral200),
            ListTile(
              onTap: () {},
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rincian Pembayaran",
                    style: text3(neutral500, semibold),
                    overflow: TextOverflow.clip,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Product",
                            style: text3(neutral500, regular),
                            overflow: TextOverflow.clip,
                          ),
                          Text(
                            "Pengiriman",
                            style: text3(neutral500, regular),
                            overflow: TextOverflow.clip,
                          ),
                          Text(
                            "Total Pembayaran",
                            style: text3(neutral400, bold),
                            overflow: TextOverflow.clip,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rp. 249.000",
                            style: text3(neutral500, regular),
                            overflow: TextOverflow.clip,
                          ),
                          Text(
                            "Rp. 50.000",
                            style: text3(neutral500, regular),
                            overflow: TextOverflow.clip,
                          ),
                          Text(
                            "Rp. 299.000",
                            style: text3(neutral400, bold),
                            overflow: TextOverflow.clip,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          left: 10,
          right: 10,
          bottom: 10,
          child: Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: primary900,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                "Chekout",
                style: text3(neutral100, bold),
              ),
            ),
          ),
        )
      ],
    );
  }
}
