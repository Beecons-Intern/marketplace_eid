import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../widget/build_app_bar.dart';
import 'components/build_body.dart';

class DetailProductScreen extends StatelessWidget {
  const DetailProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.08),
        child: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.transparent,
          title: const Text("Aerozone Shower Toilet"),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios),
          ),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  IconlyLight.heart,
                  size: 30,
                ))
          ],
          flexibleSpace: BuildAppbar(size: size),
        ),
      ),
      body: const BuildBody(),
    );
  }
}
