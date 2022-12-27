import 'package:flutter/material.dart';
import 'package:marketplace/presentation/screens/tracking_order_screen/components/body_detail_transaksi.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class TrackingScreen extends StatelessWidget {
  const TrackingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primary,
          elevation: 0,
          title: Text(
            "Detail Transaksi",
            style: text2(neutral100, bold),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: neutral100,
            ),
          ),
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/detailResi');
          },
          child: DetailTransaksiScreen(
            produk: Image.asset(
              "assets/images/toilet.png",
              scale: 1.5,
            ),
            noResi: 'C1234567808',
            status: 'Dikemas',
            almtAsal: 'Semarang',
            tglPesan: '20, Sept 2022',
            almtTujuan: 'Umbulharjo, Yogyakarta',
            tglKirim: '24, Sept 2022',
          ),
        ));
  }
}
