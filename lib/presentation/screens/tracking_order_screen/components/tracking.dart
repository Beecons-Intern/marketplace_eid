import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class LihatTrackingScreen extends StatelessWidget {
  LihatTrackingScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormBuilderState>();
  List<StepperData> stepperData = [
    StepperData(
        title: StepperText("Pesanan dibuat",
            textStyle: text3(neutral200, semibold)),
        subtitle: StepperText("-", textStyle: text3(neutral500, bold)),
        iconWidget: Container(
          padding: const EdgeInsets.all(2),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(
            IconlyLight.document,
            color: Colors.white,
            size: 20,
          ),
        )),
    StepperData(
        title: StepperText("Dikemas", textStyle: text3(neutral200, semibold)),
        subtitle: StepperText("20 Sept 2022, 15:55 WIB",
            textStyle: text3(neutral500, bold)),
        iconWidget: Container(
          padding: const EdgeInsets.all(2),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(
            Icons.wallet_giftcard,
            color: Colors.white,
            size: 20,
          ),
        )),
    StepperData(
        title: StepperText("Dikirim", textStyle: text3(neutral200, semibold)),
        subtitle: StepperText("-", textStyle: text3(neutral500, bold)),
        iconWidget: Container(
          padding: const EdgeInsets.all(2),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(
            Icons.fire_truck_rounded,
            color: Colors.white,
            size: 20,
          ),
        )),
    StepperData(
        title: StepperText("Diterima", textStyle: text3(neutral200, semibold)),
        subtitle: StepperText("-", textStyle: text3(neutral500, bold)),
        iconWidget: Container(
          padding: const EdgeInsets.all(2),
          decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: const Icon(
            Icons.check,
            color: Colors.white,
            size: 20,
          ),
        )),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tracking"),
        centerTitle: true,
        backgroundColor: primary,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(IconlyLight.arrowLeft2),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/maps.png",
            fit: BoxFit.cover,
            height: size.height * 0.4,
            scale: 0.5,
          ),
          Positioned(
            top: 140,
            left: 100,
            child: Container(
              height: size.height * 0.07,
              width: size.width * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primary300,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/images/people.png"),
                      ),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Kurir",
                            style: text3(neutral400, regular),
                          ),
                          Text(
                            "Robert",
                            style: text2(neutral500, bold),
                          ),
                        ],
                      )
                    ]),
              ),
            ),
          ),
          Positioned(
            child: DraggableScrollableSheet(
              initialChildSize: 0.65,
              minChildSize: 0.65,
              maxChildSize: 0.65,
              builder: (context, controller) => ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Container(
                  padding: EdgeInsets.only(
                    top: 30,
                    left: size.width * 0.06,
                    right: size.width * 0.05,
                  ),
                  color: neutral100,
                  child: SingleChildScrollView(
                    controller: controller,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: size.width * 0.1,
                              backgroundColor: primary300,
                              child: Image.asset(
                                "assets/images/toilet.png",
                                scale: 1.5,
                              ),
                            ),
                            SizedBox(width: size.width * 0.03),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Estimasi diterima",
                                  style: text4(neutral500, semibold),
                                ),
                                SizedBox(height: size.height * 0.02),
                                Text(
                                  "24 Sept 2022",
                                  style: text3(neutral500, bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        //timeline
                        AnotherStepper(
                          gap: 20,
                          stepperList: stepperData,
                          stepperDirection: Axis.vertical,
                          iconHeight: size.height * 0.05,
                          iconWidth: size.width * 0.1,
                          activeIndex: 1,
                          activeBarColor: primary,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
