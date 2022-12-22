import 'package:flutter/material.dart';
import 'package:marketplace/presentation/screens/pesanan_saya_screen/components/belum_dibayar_screen.dart';
import 'package:marketplace/presentation/screens/pesanan_saya_screen/components/beri_nilai_screen.dart';
import 'package:marketplace/presentation/screens/pesanan_saya_screen/components/dikemas_screen.dart';
import 'package:marketplace/presentation/screens/pesanan_saya_screen/components/dikirm_screen.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class BodyPesananSaya extends StatefulWidget {
  const BodyPesananSaya({Key? key}) : super(key: key);

  @override
  State<BodyPesananSaya> createState() => _BodyPesananSayaState();
}

class _BodyPesananSayaState extends State<BodyPesananSaya> {
  int indexPage = 0;
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        TabBar(
          onTap: (index) {
            setState(() {
              indexPage = index;
            });
          },
          indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(color: primary, width: 3),
              insets: EdgeInsets.symmetric(horizontal: 10)),
          isScrollable: false,
          tabs: [
            Tab(
              child: Text(
                "Belum Dibayar",
                style: text3(indexPage == 0 ? primary : neutral200, bold),
                textAlign: TextAlign.center,
              ),
            ),
            Tab(
              child: Text(
                "Dikemas",
                style: text3(indexPage == 1 ? primary : neutral200, bold),
                textAlign: TextAlign.center,
              ),
            ),
            Tab(
              child: Text(
                "Dikirim",
                style: text3(indexPage == 2 ? primary : neutral200, bold),
                textAlign: TextAlign.center,
              ),
            ),
            Tab(
              child: Text(
                "Berii Nilai",
                style: text3(indexPage == 3 ? primary : neutral200, bold),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
        const Expanded(
          child: TabBarView(physics: NeverScrollableScrollPhysics(), children: [
            BelumDibayarScreen(),
            DikemasScreen(),
            DikirimScreen(),
            BeriNilaiProdukScreen(),
            // const Pengalaman(),
            // const Kompetensi()
          ]),
        ),
      ],
    );
  }
}
