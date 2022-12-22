import 'package:flutter/material.dart';
import 'package:marketplace/utilities/color.dart';

import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primary,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          // leading: const Icon(
            
          //   Icons.arrow_back_ios_new_outlined,
          //   color: neutral100,
          // ),
        ),
        body: const Body());
  }
}
