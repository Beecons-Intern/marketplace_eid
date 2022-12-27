import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/presentation/routes/page_name.dart';
import 'package:marketplace/presentation/screens/widget/card_alamat.dart';
import 'package:marketplace/utilities/color.dart';

class AlamatScreen extends StatelessWidget {
  const AlamatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(IconlyLight.arrowLeft2),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
        backgroundColor: primary,
        title: const Text("Alamat Pengiriman"),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RouteName.lokasi);
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Icon(IconlyLight.paperPlus),
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteName.ubahAlamat);
              },
              child: const CardAlamat(
                nama: 'Ayu Anjani',
                noTelepon: '084567432156',
                patokan: 'Semaki, Umbulharjo (depan indomaret)',
                alamat: 'Sleman, Yogyakarta,',
                kodePos: '(55166)',
              ));
        },
        itemCount: 4,
      ),
    );
  }
}
