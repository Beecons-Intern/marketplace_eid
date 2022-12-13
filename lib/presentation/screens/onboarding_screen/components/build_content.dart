import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class BuildContentOnBoarding extends StatelessWidget {
  const BuildContentOnBoarding(
      {Key? key,
      required this.size,
      required this.subtitle,
      required this.image})
      : super(key: key);

  final Size size;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          subtitle,
          style: body(neutral100, medium),
        ),
        const SizedBox(
          height: 16,
        ),
        Center(
            child: SvgPicture.asset(
          image,
          height: size.height * 0.5,
        )),
        SizedBox(
          height: size.height * 0.1,
        ),
      ],
    );
  }
}
