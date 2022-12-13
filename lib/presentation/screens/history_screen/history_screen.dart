import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/presentation/routes/page_name.dart';

import '../../../utilities/color.dart';
import '../../../utilities/text_styles.dart';
import 'components/build_body.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.08),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: FormBuilder(
              child: Container(
            decoration: BoxDecoration(
                color: neutral100,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: neutral300)),
            child: FormBuilderTextField(
              name: "search",
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  hintText: "Cari Transaksi",
                  hintStyle: text3(neutral300, regular),
                  border: InputBorder.none,
                  prefixIcon: const Icon(
                    IconlyBroken.search,
                    size: 20,
                  )),
            ),
          )),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteName.notifikasi);
              },
              icon: const Icon(
                IconlyLight.notification,
                color: primary900,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteName.keranjang);
              },
              icon: const Icon(
                IconlyLight.buy,
                color: primary900,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteName.chat);
              },
              icon: const Icon(
                IconlyLight.chat,
                color: primary900,
              ),
            ),
          ],
        ),
      ),
      body: const BuildBody(),
    );
  }
}
