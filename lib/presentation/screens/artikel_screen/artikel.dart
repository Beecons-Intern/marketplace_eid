import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/presentation/screens/artikel_screen/component/Build_body.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';
import '../widget/build_app_bar.dart';

class ArtikelScreen extends StatelessWidget {
  const ArtikelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.08),
        child: BuildAppbar(
          size: size,
          title: FormBuilder(
              child: Container(
            decoration: BoxDecoration(
                color: neutral100, borderRadius: BorderRadius.circular(10)),
            child: FormBuilderTextField(
              name: "search",
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  hintText: "Cari Artikel",
                  hintStyle: text3(neutral300, regular),
                  border: InputBorder.none,
                  prefixIcon: const Icon(IconlyBroken.search)),
            ),
          )),
        ),
      ),
      body: const BuildBody(),
    );
  }
}
