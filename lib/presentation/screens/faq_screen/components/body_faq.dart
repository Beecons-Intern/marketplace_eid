import 'package:flutter/material.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class BodyFAQ extends StatelessWidget {
  const BodyFAQ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map> listQuestion = [
      {"content": "Mengapa saya tidak bisa mendaftar dengan nomor HP saya?"},
      {
        "content":
            "Bagaimana cara menghubungi custommer service marketplace.ID?"
      },
      {
        "content": "Bagaimana cara reset password akun jika saya lupa password?"
      },
    ];

    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: size.height * 0.06, horizontal: size.width * 0.05),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              "assets/images/image 21.png",
              scale: 0.8,
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          Container(
            decoration: BoxDecoration(
                color: neutral100,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 221, 218, 218),
                      blurRadius: 2,
                      spreadRadius: 2)
                ]),
            child: ExpansionTile(
              title: Text(
                listQuestion[0]["content"],
                style: text3(neutral500, medium),
              ),
              children: [
                Container(
                  width: size.width * 0.8,
                  height: size.height * 0.06,
                  decoration: BoxDecoration(
                    color: neutral100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                      "dani kurtnfdkfznf dvfdh hjbdvhjgjdfgad jhjgjfgdfsd hdhjgdfsdngf hfghgdsfg "),
                )
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Container(
            decoration: BoxDecoration(
                color: neutral100,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 221, 218, 218),
                      blurRadius: 2,
                      spreadRadius: 2)
                ]),
            child: ExpansionTile(
              title: Text(
                listQuestion[1]["content"],
                style: text3(neutral500, medium),
              ),
              children: [
                Container(
                  width: size.width * 0.8,
                  height: size.height * 0.06,
                  decoration: BoxDecoration(
                    color: neutral100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                      "dani kurtnfdkfznf dvfdh hjbdvhjgjdfgad jhjgjfgdfsd hdhjgdfsdngf hfghgdsfg "),
                )
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Container(
            decoration: BoxDecoration(
                color: neutral100,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 221, 218, 218),
                      blurRadius: 2,
                      spreadRadius: 2)
                ]),
            child: ExpansionTile(
              title: Text(
                listQuestion[2]["content"],
                style: text3(neutral500, medium),
              ),
              children: [
                Container(
                  width: size.width * 0.8,
                  height: size.height * 0.06,
                  decoration: BoxDecoration(
                    color: neutral100,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Text(
                      "dani kurtnfdkfznf dvfdh hjbdvhjgjdfgad jhjgjfgdfsd hdhjgdfsdngf hfghgdsfg "),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
