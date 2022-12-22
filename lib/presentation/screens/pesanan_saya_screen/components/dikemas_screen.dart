import 'package:flutter/material.dart';
import 'package:marketplace/presentation/screens/widget/card_pesanan_dikemas.dart';

class DikemasScreen extends StatelessWidget {
  const DikemasScreen({Key? key}) : super(key: key);

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
              tombol: Container(),
              status: 'Pesanan sedang dikirim ke lokasi',
            ),
          );
        }
      },
    );
  }
}
