import 'package:flutter/material.dart';
import 'package:marketplace/presentation/routes/page_name.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

import '../../widget/card_pesanan_dikemas.dart';

class DikirimScreen extends StatelessWidget {
  const DikirimScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Container();
        } else {
          return Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.01,
              horizontal: size.width * 0.04,
            ),
            child: CardPesananSaya(
              produk: Image.asset(
                "assets/images/toilet.png",
                scale: 3,
              ),
              namaproduk: 'Aerozen Shower Toilet',
              jumlah: '1x',
              tanggalBayar: '07 Oct 09:12',
              tanggalPesan: '10/09/2022',
              totalBayar: 'Rp. 3.100.000',
              tombol: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RouteName.detailTransaksi);
                },
                child: Container(
                  width: size.width * 0.3,
                  height: size.height * 0.04,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: primary,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      "Track pengiriman",
                      style: text4(primary, regular),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              status: 'Pesanan sedang dikirim ke lokasi',
            ),
          );
        }
      },
    );
  }
}
