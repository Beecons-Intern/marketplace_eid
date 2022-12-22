import 'package:flutter/material.dart';
import 'package:marketplace/presentation/screens/widget/card_pesanan_dikemas.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class BeriNilaiProdukScreen extends StatelessWidget {
  const BeriNilaiProdukScreen({Key? key}) : super(key: key);

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
                  // showModalBottomSheet(context: context, builder: builder)
                },
                child: Container(
                  width: size.width * 0.2,
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
                      "Beri nilai",
                      style: text4(primary, regular),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              status: 'Pesanan sudah diterima',
            ),
          );
        }
      },
    );
  }
}
