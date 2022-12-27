import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/presentation/screens/lokasi_alamat_screen/components/body_lokasi_screen.dart';

import 'package:marketplace/utilities/color.dart';

class LokasiScreen extends StatelessWidget {
  const LokasiScreen({Key? key}) : super(key: key);

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
          title: const Text("Tambah Lokasi"),
          centerTitle: true,
          backgroundColor: primary,
        ),
        resizeToAvoidBottomInset: false,
        body: const BodyLokasiScreen());
  }
}
