import 'package:flutter/material.dart';
import 'package:marketplace/presentation/screens/login_screen/components/body_login_screen.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: neutral100,
          elevation: 0,
          centerTitle: true,
          title: Text('Login', style: text2(neutral500, bold)),
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
      ),
      backgroundColor: neutral100,
      body: const BodyLoginScreen(),
    );
  }
}
