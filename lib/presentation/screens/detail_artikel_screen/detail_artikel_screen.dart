import 'package:flutter/material.dart';
import 'package:marketplace/presentation/screens/widget/build_app_bar.dart';
import 'component/build_body.dart';

class DetailArtikelScreen extends StatelessWidget {
  const DetailArtikelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.08),
        child: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text("Detail Artikel"),
          centerTitle: true,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios),
          ),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.info_outline,
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
