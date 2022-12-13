import 'package:flutter/material.dart';
import 'package:marketplace/presentation/routes/page_name.dart';

import '../../../../utilities/color.dart';
import '../../../../utilities/text_styles.dart';

class BuildBody extends StatelessWidget {
  const BuildBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Center(
        //   child: Image.asset('assets/images/no-chat.png'),
        // )
        Expanded(
            child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteName.detailChat);
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          maxRadius: 28,
                          child: Container(
                            width: size.width * 0.15,
                            height: size.height * 0.15,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/avatars.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        SizedBox(width: size.width * 0.05),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Akbar Maulana",
                              style: text2(neutral500, regular),
                            ),
                            SizedBox(width: size.width * 0.02),
                            Text(
                              "okee kak",
                              style: text4(neutral400, regular),
                            ),
                          ],
                        )
                      ],
                    ),
                    Text(
                      "10.00",
                      style: text3(neutral300, regular),
                    ),
                  ],
                ),
              ),
            );
          },
        )),
      ],
    );
  }
}
