import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class BuildBody extends StatelessWidget {
  const BuildBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.78,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildInvoice(size, "INV/6765/XXXX", "17/09/22"),
                  SizedBox(height: size.height * 0.01),
                  buildDetailPemesanan(
                    size,
                    "Aerazone Shower Toilet CEAS5312 - 1000422CO",
                    "Rp. 5.120.000",
                  ),
                  buildInfo(
                    size,
                    "PT. Baracipta Esa Engineering",
                    "17 September 2022",
                    "Jl. Mijil No.98, Karangjati, Sinduadi, Kec. Mlati, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55284",
                    "Rp. 5.120.000",
                    "Rp. 120.000",
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: primary900,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Selesai",
                    style: text3(neutral100, semibold),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildInvoice(Size size, String noPemesanan, String tglPembelian) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: neutral200, width: 2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Selesai",
            style: text3(neutral300, regular),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    noPemesanan,
                    style: text4(neutral300, regular),
                  ),
                  SizedBox(width: size.width * 0.01),
                  const Icon(
                    IconlyLight.document,
                    size: 20,
                    color: primary900,
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Lihat invoice",
                  style: text4(neutral300, regular),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tanggal Pembelian",
                style: text4(neutral300, regular),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  tglPembelian,
                  style: text4(neutral300, regular),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildDetailPemesanan(Size size, String title, String harga) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: neutral200, width: 2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.01,
                      horizontal: size.width * 0.01),
                  child: const Center(
                    child: Icon(
                      IconlyLight.work,
                      color: primary900,
                      size: 40,
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Detail Belanja",
                      style: text3(neutral500, regular),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Text(
                      "17/09/2022",
                      style: text3(neutral200, regular),
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                const CircleAvatar(
                  maxRadius: 10,
                  backgroundColor: primary900,
                  child: Icon(
                    Icons.done_outlined,
                    color: neutral100,
                    size: 10,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  "Selesai",
                  style: text3(primary900, regular),
                )
              ],
            )
          ],
        ),
        const Divider(thickness: 2, color: neutral200),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.01, horizontal: size.width * 0.01),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(color: neutral200),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Image(
                  image: const AssetImage('assets/images/toilet.png'),
                  width: size.width * 0.1,
                )),
              ),
            ),
            SizedBox(
              width: size.width * 0.05,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Aerozone Shower Toilet CEA55321-",
                  style: text3(neutral500, regular),
                ),
                Text(
                  "1x",
                  style: text4(neutral500, regular),
                )
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                "Total Pembayaran",
                style: text3(neutral400, regular),
              ),
            ),
            Text(
              "Rp. 3.100.000",
              style: text3(neutral500, bold),
            )
          ],
        ),
        const Divider(thickness: 2, color: neutral200),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Pesanan Telah Diterima",
              style: text4(primary900, regular),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                      vertical: size.height * 0.01),
                  decoration: BoxDecoration(
                      border: Border.all(color: primary900),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Beli Lagi",
                      style: text4(primary900, regular),
                    ),
                  ),
                ),
                SizedBox(width: size.width * 0.02),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.05,
                      vertical: size.height * 0.01),
                  decoration: BoxDecoration(
                      border: Border.all(color: primary900),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Beri Nilai",
                      style: text4(primary900, regular),
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      ]),
    );
  }

  Widget buildInfo(Size size, String supplier, String tgl, String alamat,
      String subTotal, String ongkir) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Info Pengiriman",
            style: text3(neutral500, bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 2,
                  child: Text(
                    "Supplier",
                    style: text3(neutral500, regular),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Text(
                    supplier,
                    style: text3(neutral500, regular),
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 2,
                  child: Text(
                    "Tanggal Pengiriman",
                    style: text3(neutral500, regular),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Text(
                    tgl,
                    style: text3(neutral500, regular),
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 2,
                  child: Text(
                    "Alamat Pengiriman",
                    style: text3(neutral500, regular),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Text(
                    alamat,
                    style: text3(neutral500, regular),
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            "Rincian Pembayaran",
            style: text3(neutral500, bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sub Total",
                        style: text3(neutral500, regular),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Text(
                        "Ongkir",
                        style: text3(neutral500, regular),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Text(
                        "TOTAL",
                        style: text3(neutral500, semibold),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        subTotal,
                        style: text3(neutral500, regular),
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: size.height * 0.01),
                      Text(
                        ongkir,
                        style: text3(neutral500, regular),
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(height: size.height * 0.01),
                      Text(
                        "Rp. 5.300.000",
                        style: text3(neutral500, semibold),
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
