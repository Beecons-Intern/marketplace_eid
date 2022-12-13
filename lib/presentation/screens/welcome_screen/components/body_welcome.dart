import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:marketplace/presentation/routes/page_name.dart';
import 'package:marketplace/presentation/screens/widget/outline_button.dart';
import 'package:marketplace/presentation/screens/widget/rounded_button.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class BodyWelcomeScreen extends StatelessWidget {
  const BodyWelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.06,
            ),
            SvgPicture.asset(
              "assets/logo/estimator_green.svg",
              width: 100,
            ),
            SizedBox(
              height: size.height * 0.06,
            ),
            SvgPicture.asset("assets/logo/welcome.svg"),
            SizedBox(
              height: size.height * 0.05,
            ),
            Text(
              "Kerja Hemat",
              style: heading5(primary, bold),
            ),
            Text(
              "Hasil Akurat!",
              style: heading5(primary, bold),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "aplikasi pembuatan RAB online dengan dukungan database harga terbaru yang diperbaharui secara realtime dan dapat digunakan untuk berkolaborasi dari mana saja",
              style: text3(neutral500, regular),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 32,
            ),
            RoundedButton(
              text: "Login",
              ontap: () {
                Navigator.pushNamed(context, RouteName.login);
              },
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            OutlineButton(
              text: "Register",
              ontap: () {
                Navigator.pushNamed(context, RouteName.register);
              },
            )
          ],
        ),
      ),
    );
  }
}
