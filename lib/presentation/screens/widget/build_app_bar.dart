import 'package:flutter/material.dart';

import '../../../utilities/color.dart';
import 'app_clipper.dart';

class BuildAppbar extends StatelessWidget {
  const BuildAppbar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.2,
          color: primary,
        ),
        Positioned(
          top: 0,
          right: 0,
          child: ClipPath(
            clipper: AppClipper(),
            child: Container(
              height: size.height * 0.2,
              width: size.width * 0.45,
              color: primary800,
            ),
          ),
        ),
      ],
    );
  }
}
