import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/presentation/screens/faq_screen/components/body_faq.dart';
import 'package:marketplace/utilities/color.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            IconlyLight.arrowLeft2,
            color: neutral500,
            size: 32,
          ),
        ),
      ),
      body: const BodyFAQ(),
    );
  }
}
