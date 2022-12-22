import 'package:flutter/material.dart';
import 'package:marketplace/presentation/screens/pesanan_saya_screen/components/body_pesanan_saya.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class PesananSayaScreen extends StatelessWidget {
  const PesananSayaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Builder(
          builder: (context) => Scaffold(
                // backgroundColor: primary,
                appBar: AppBar(
                  backgroundColor: primary,
                  elevation: 0,
                  leading: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: neutral100,
                      )),
                  centerTitle: true,
                  title: Text(
                    "Pesanan Saya",
                    style: text1(neutral100, bold),
                  ),
                ),
                body: const BodyPesananSaya(),
              )),
    );
  }
}
