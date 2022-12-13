import 'package:flutter/material.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BuildBannerHome extends StatefulWidget {
  const BuildBannerHome({Key? key}) : super(key: key);

  @override
  State<BuildBannerHome> createState() => _BuildBannerHomeState();
}

class _BuildBannerHomeState extends State<BuildBannerHome> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(children: [
      SizedBox(
        width: size.width,
        height: size.height * 0.2,
        child: PageView(
          controller: controller,
          scrollDirection: Axis.horizontal,
          children: [
            Image.asset("assets/images/Banner1.png"),
            Image.asset("assets/images/Banner1.png"),
            Image.asset("assets/images/Banner1.png"),
            Image.asset("assets/images/Banner1.png"),
            Image.asset("assets/images/Banner1.png"),
            // BuildProfileAdmin(size: size),
            // BuildTime(size: size),
          ],
        ),
      ),
      SizedBox(
        height: size.height * 0.005,
        child: SmoothPageIndicator(
          controller: controller,
          count: 5,
          //  effect: const ExpandingDotsEffect(
          //   dotHeight: 8,
          //   dotWidth: 10,
          //   dotColor: primary300,
          //   activeDotColor: primary300,
          // ),
          effect: const ScrollingDotsEffect(
              dotColor: neutral200,
              activeDotColor: primary,
              dotWidth: 8,
              dotHeight: 8),
        ),
      )
    ]);
  }
}
