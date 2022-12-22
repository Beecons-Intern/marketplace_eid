import 'package:flutter/material.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class BuildBrand extends StatelessWidget {
  const BuildBrand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return 
    Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Brand",
              style: text3(neutral500, bold),
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Lihat Semua",
                style: text4(primary, semibold),
              ),
            ),
          ],
        ),
      ),
     
      SizedBox(
          height: size.height * 0.18,
          width: size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.08, vertical: size.height * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/image 7.png"),
                    Image.asset("assets/images/image 9.png"),
                    Image.asset("assets/images/image 8.png"),
                    Image.asset("assets/images/image10.png"),
                  ],
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/image 11.png"),
                    Image.asset("assets/images/image 12.png"),
                    Image.asset("assets/images/image 13.png"),
                    Image.asset("assets/images/image 14.png"),
                  ],
                ),
              ],
            ),
          ))
    ]);
  
  }
}
