import 'package:flutter/material.dart';
import 'package:marketplace/presentation/screens/register_screen/components/body_register_screen.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: neutral100,
        elevation: 0,
        title: Text(
          "Register",
          style: text2(neutral500, bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: neutral500,
          ),
        ),
      ),
      body: BodyRegisterScreen(),
    );
  }
}
