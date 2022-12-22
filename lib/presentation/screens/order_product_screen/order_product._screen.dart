import 'package:flutter/material.dart';

import '../widget/build_app_bar.dart';
import 'components/build_body.dart';

class OrderProductScreen extends StatelessWidget {
  const OrderProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(size.height * 0.08),
        child: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.transparent,
          title: const Text("Order Product"),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios),
          ),
          elevation: 0,
          flexibleSpace: BuildAppbar(size: size),
        ),
      ),
      body: const BuildBody(),
    );
  }
}
