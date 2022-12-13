import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:marketplace/presentation/routes/page_name.dart';
import 'package:marketplace/presentation/screens/widget/build_textfields.dart';
import 'package:marketplace/presentation/screens/widget/rounded_button.dart';
import 'package:marketplace/presentation/screens/widget/rounded_container.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class BodyLoginScreen extends StatefulWidget {
  const BodyLoginScreen({Key? key}) : super(key: key);

  @override
  State<BodyLoginScreen> createState() => _BodyLoginScreenState();
}

class _BodyLoginScreenState extends State<BodyLoginScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  // bool rememberMe = false;
  bool? rememberMe = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
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
              SizedBox(
                height: size.height * 0.04,
              ),
              Text(
                "Hai, Selamat Datang!",
                style: text1(neutral500, semibold),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Text(
                "Senang melihatmu lagi. Silahkan Masuk",
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
                          "Email Addres",
                          style: text3(neutral400, regular),
                        ),
                      ),
                      const BuildTextField(
                        hint: "Email",
                        name: "email",
                        keyboardType: TextInputType.emailAddress,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6),
                        child: Text(
                          "Password",
                          style: text3(neutral400, regular),
                        ),
                      ),
                      const BuildTextField(
                        hint: "Password",
                        isPassword: true,
                        name: "password",
                        keyboardType: TextInputType.visiblePassword,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Transform.scale(
                                scale: 0.8,
                                child: Checkbox(
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  value: rememberMe,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      rememberMe = value;
                                    });
                                  },
                                  checkColor: neutral100,
                                  activeColor: neutral300,
                                ),
                              ),
                              Text(
                                "Remember Me",
                                style: text4(neutral300, regular),
                              )
                            ],
                          ),
                          Text(
                            "Lupa Password?",
                            style: text4(accentBrown500, regular),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.13,
                      ),
                      RoundedButton(
                        text: "Masuk",
                        ontap: () {
                          _formKey.currentState!.save();

                          // if (_formKey.currentState!
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
                          //         "") {
                          //   authViewModel.email = _formKey
                          //       .currentState!.value["email"];
                          //   authViewModel.password = _formKey
                          //       .currentState!.value["password"];

                          //   authViewModel.signIn().then((value) {
                          //     if (value != true) {
                          //       ScaffoldMessenger.of(context)
                          //           .showSnackBar(
                          //               snackbarAlert(size, 3));
                          //       return;
                          //     }

                          Navigator.pushNamedAndRemoveUntil(
                              context, RouteName.navigation, (route) => false);

                          //     ScaffoldMessenger.of(context)
                          //         .showSnackBar(
                          //             snackbarAlert(size, 1));
                          //   });
                          // } else {
                          //   ScaffoldMessenger.of(context)
                          //       .showSnackBar(
                          //           snackbarAlert(size, 2));
                          //   return;
                          // }
                        },
                      ),
                    ],
                  )),
              SizedBox(
                height: size.height * 0.02,
              ),
              Center(
                child: Text(
                  "atau gunakan akun",
                  style: text3(neutral300, regular),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              RoundedContainer(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/logo/google.svg"),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Google",
                    // style: text2(neutral500, regular),
                  )
                ],
              )),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "belum punya akun?",
                    style: text3(neutral300, regular),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, RouteName.register);
                    },
                    child: Text(
                      "Daftar",
                      style: text3(primary, regular),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  SnackBar snackbarAlert(Size size, int condition) {
    late String message;
    late String image;

    switch (condition) {
      case 1:
        message = "Berhasil masuk!";
        image = "assets/lotie/success_primary.json";
        break;
      case 2:
        message = "Input yang anda masukkan tidak lengkap!";
        image = "assets/lotie/error.json";
        break;
      case 3:
        message = "Aktivitas masuk gagal, akun tidak ditemukan";
        image = "assets/lotie/error.json";
        break;
      default:
    }

    return SnackBar(
        duration: const Duration(seconds: 1),
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
