import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:marketplace/presentation/routes/page_name.dart';
import 'package:marketplace/presentation/screens/widget/build_textfields.dart';
import 'package:marketplace/presentation/screens/widget/rounded_button.dart';
import 'package:marketplace/presentation/screens/widget/rounded_container.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class BodyRegisterScreen extends StatelessWidget {
  BodyRegisterScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(
        top: 30,
        left: size.width * 0.05,
        right: size.width * 0.05,
      ),
      color: neutral100,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hai, Selamat Bergabung!",
              style: text1(neutral500, semibold),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Text(
              "Senang bisa melihatmu. Silahkan Bergabung ",
              style: text4(neutral300, regular),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            FormBuilder(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Text(
                        "Nama",
                        style: text3(neutral400, regular),
                      ),
                    ),
                    const BuildTextField(
                      hint: "masukkan nama",
                      name: "nama",
                      keyboardType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Text(
                        "Email",
                        style: text3(neutral400, regular),
                      ),
                    ),
                    const BuildTextField(
                      hint: "masukkan email",
                      name: "email",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Text(
                        "Password",
                        style: text3(neutral400, regular),
                      ),
                    ),
                    const BuildTextField(
                      hint: "masukkan password",
                      isPassword: true,
                      name: "password",
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Text(
                        "Ulangi Password",
                        style: text3(neutral400, regular),
                      ),
                    ),
                    const BuildTextField(
                      hint: "Ulangi Password",
                      isPassword: true,
                      name: "passwordConfirmation",
                      keyboardType: TextInputType.visiblePassword,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    RoundedButton(
                      text: "Daftar",
                      ontap: () {
                        _formKey.currentState!.save();
                        // if (_formKey.currentState!
                        //             .value["nama"] !=
                        //         null &&
                        //     _formKey.currentState!
                        //             .value["nama"] !=
                        //         "" &&
                        //     _formKey.currentState!
                        //             .value["email"] !=
                        //         null &&
                        //     _formKey.currentState!
                        //             .value["email"] !=
                        //         "" &&
                        //     _formKey.currentState!
                        //             .value["password"] !=
                        //         null &&
                        //     _formKey.currentState!
                        //             .value["password"] !=
                        //         "" &&
                        //     _formKey.currentState!.value[
                        //             "passwordConfirmation"] !=
                        //         null &&
                        //     _formKey.currentState!.value[
                        //             "passwordConfirmation"] !=
                        //         "") {
                        //   if (!isEmail(_formKey
                        //       .currentState!.value["email"]
                        //       .toString()
                        //       .toLowerCase())) {
                        //     ScaffoldMessenger.of(context)
                        //         .showSnackBar(
                        //             snackbarAlert(size, 2));
                        //     return;
                        //   }

                        //   if (_formKey.currentState!
                        //           .value["password"] !=
                        //       _formKey.currentState!.value[
                        //           "passwordConfirmation"]) {
                        //     ScaffoldMessenger.of(context)
                        //         .showSnackBar(
                        //             snackbarAlert(size, 3));
                        //     return;
                        //   }

                        //   authViewModel.email = _formKey
                        //       .currentState!.value["email"];
                        //   authViewModel.username = _formKey
                        //       .currentState!.value["nama"];
                        //   authViewModel.password = _formKey
                        //       .currentState!.value["password"];

                        //   authViewModel.signUp().then((value) {
                        //     if (value != true) {
                        //       ScaffoldMessenger.of(context)
                        //           .showSnackBar(
                        //               snackbarAlert(size, 5));
                        //       return;
                        //     }

                        //     Navigator.pushNamedAndRemoveUntil(
                        //         context,
                        //         RouteName.navigation,
                        //         (route) => false);

                        //     ScaffoldMessenger.of(context)
                        //         .showSnackBar(
                        //             snackbarAlert(size, 1));
                        //   });
                        // } else {
                        //   ScaffoldMessenger.of(context)
                        //       .showSnackBar(
                        //           snackbarAlert(size, 4));
                        //   return;
                        // }
                      },
                    ),
                  ],
                )),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "atau gunakan akun",
                style: text3(neutral500, regular),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: RoundedContainer(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/logo/google.svg"),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Google",
                    style: text2(neutral500, regular),
                  )
                ],
              )),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "sudah punya akun?",
                  style: text3(neutral500, regular),
                ),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, RouteName.login);
                  },
                  child: Text(
                    "Masuk",
                    style: text3(primary, regular),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  SnackBar snackbarAlert(Size size, int condition) {
    late String message;
    late String image;

    switch (condition) {
      case 1:
        message = "Register berhasil!";
        image = "assets/lotie/success_primary.json";
        break;
      case 2:
        message = "Format email salah!";
        image = "assets/lotie/error.json";
        break;
      case 3:
        message = "Password tidak sama!";
        image = "assets/lotie/error.json";
        break;
      case 4:
        message = "Input yang anda masukkan tidak lengkap!";
        image = "assets/lotie/error.json";
        break;
      case 5:
        message = "Email sudah pernah didaftarkan!";
        image = "assets/lotie/error.json";
        break;
      default:
    }

    return SnackBar(
        duration: const Duration(seconds: 2),
        margin: EdgeInsets.only(
            bottom: size.height * 0.5,
            left: size.width * 0.2,
            right: size.width * 0.2),
        backgroundColor: neutral100,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        behavior: SnackBarBehavior.floating,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            LottieBuilder.asset(image, width: 80, height: 80),
            Text(message,
                style: text3(neutral500, regular), textAlign: TextAlign.center),
          ],
        ));
  }
}
