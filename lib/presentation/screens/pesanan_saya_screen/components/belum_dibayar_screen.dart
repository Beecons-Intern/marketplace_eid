import 'package:flutter/material.dart';
import 'package:marketplace/presentation/screens/widget/card_pesanan.dart';

class BelumDibayarScreen extends StatelessWidget {
  const BelumDibayarScreen({Key? key}) : super(key: key);

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
            child: CardPesanan(
              bank: Image.asset("assets/images/BCA.png"),
              namaBank: 'BCA Virtual Account',
              rekening: '012941227401720',
              tanggalBayar: '07 Oct 09:12',
              tanggalPesan: '10/09/2022',
              totalBayar: 'Rp. 3.100.000',
            ),
          );
        }
      },
    );
 
  }
}
