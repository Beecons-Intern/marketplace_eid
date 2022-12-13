import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class Searching extends StatelessWidget {
  const Searching({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      child: Container(
        decoration: BoxDecoration(
            color: neutral100,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: neutral300)),
        child: FormBuilderTextField(
          name: "search",
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
              isDense: true,
              hintText: "Cari Artikel",
              hintStyle: text3(neutral300, regular),
              border: InputBorder.none,
              prefixIcon: const Icon(
                IconlyBroken.search,
                size: 20,
              )),
        ),
      ),
    );
  }
}
