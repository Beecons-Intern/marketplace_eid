import 'package:flutter/material.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class BuildProfileToko extends StatelessWidget {
  const BuildProfileToko({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    String keterangan =
        "American Standard menawarkan solusi proyek keseluruhan bagi para konsumen residensial dan komersial,dengan efektif menawarkan produk yang hemat air yang digunakan untuk bangunan baru dan proyek penggantian/perubahan model. American Standard beroperasi di bawah unit bisnis LIXIL Water Technology yang merupakan pemimpin global terbesar di dunia dalam dunia saniter. Divisi ini beroperasi di lebih dari 150 negara, dengan lebih dari 50 produksi dan fasilitas R&D secara global. Merek usaha LIXIL Water Technology mencakup: LIXIL, INAX, GROHE, American Standard dan JAXSON";
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              height: size.height * 0.4,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/profile-suplier.png"),
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(height: size.height * 0.03),
            Text(
              "Profile Toko",
              style: text2(neutral500, bold),
            ),
            Text(
              keterangan,
              style: text4(neutral500, regular),
              overflow: TextOverflow.clip,
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}
