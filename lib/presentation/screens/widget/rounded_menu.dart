import 'package:flutter/material.dart';
import 'package:marketplace/utilities/color.dart';

class RoundedMenu extends StatelessWidget {
  const RoundedMenu({
    Key? key,
    required this.image,
    required this.title,
    required this.lebar,
    required this.tinggi,
  }) : super(key: key);

  final Image image;
  final Text title;
  final double lebar;
  final double tinggi;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: lebar,
      height: tinggi,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size.width * 0.14,
            height: size.height * 0.07,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: neutral100,
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 199, 198, 198),
                  blurRadius: 2,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [image],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: title,
          )
        ],
      ),
    );
  }
}
