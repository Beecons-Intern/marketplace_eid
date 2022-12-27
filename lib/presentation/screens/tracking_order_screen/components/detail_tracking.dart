
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/presentation/routes/page_name.dart';
import 'package:marketplace/presentation/screens/widget/rounded_button.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

enum CustomStepState {
  indexed,
  editing,
}

class DetailTracking extends StatelessWidget {
  const DetailTracking({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("C1234567808"),
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
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.02,
                      horizontal: size.width * 0.05),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Informasi Barang",
                          style: text3(neutral500, semibold),
                        ),
                        Stepper(
                            physics: const BouncingScrollPhysics(),
                            controlsBuilder: (context, controller) {
                              return const SizedBox.shrink();
                            },
                            currentStep: 1,
                            elevation: 0,
                            steps: [
                              Step(
                                title: const Text('Pesanan dibuat'),
                                subtitle: Text(
                                  ' - ',
                                  style: text2(neutral500, bold),
                                ),
                                content: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    color: primary,
                                    height: size.height * 0.2,
                                  ),
                                ),
                              ),
                              Step(
                                state: StepState.indexed,
                                subtitle: Text(
                                  ' - ',
                                  style: text2(neutral500, bold),
                                ),
                                isActive: true,
                                title: const Text('Dikemas'),
                                content: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Dikirim",
                                        ),
                                        Text(
                                          "20 Sept 2022, 12:55 WIB",
                                          style: text3(neutral500, bold),
                                        ),
                                        SizedBox(height: size.height * 0.02),
                                        Image.asset("assets/images/maps1.png"),
                                        SizedBox(height: size.height * 0.02),
                                        Text(
                                          "Alamat Pengiriman",
                                          style: text4(neutral300, regular),
                                        ),
                                        Text(
                                          "Jl. Kenari no.3, RT.01/RW.01, Semaki, Umbulharjo",
                                          style: text3(neutral500, bold),
                                        ),
                                        const Divider(
                                          thickness: 1,
                                          color: neutral200,
                                        ),
                                        Text(
                                          "Penerima",
                                          style: text4(neutral300, regular),
                                        ),
                                        Text(
                                          "Ayu Anjani",
                                          style: text3(neutral500, bold),
                                        ),
                                        const Divider(
                                          thickness: 1,
                                          color: neutral200,
                                        ),
                                        Text(
                                          "Pembayaran",
                                          style: text4(neutral300, regular),
                                        ),
                                        Text(
                                          "Rp. 224.000",
                                          style: text3(neutral500, bold),
                                        ),
                                        const Divider(
                                          thickness: 1,
                                          color: neutral200,
                                        ),
                                        Text(
                                          "Estimasi diterima",
                                          style: text4(neutral300, regular),
                                        ),
                                        Text(
                                          "24 Sept 2022",
                                          style: text3(neutral500, bold),
                                        ),
                                        const Divider(
                                          thickness: 1,
                                          color: neutral200,
                                        ),
                                      ]),
                                ),
                              ),
                              Step(
                                title: const Text('Dikirim'),
                                subtitle: Text(
                                  ' - ',
                                  style: text2(neutral500, bold),
                                ),
                                content: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    color: primary,
                                    height: size.height * 0.2,
                                  ),
                                ),
                              ),
                              Step(
                                title: const Text('Diterima'),
                                subtitle: Text(
                                  ' - ',
                                  style: text2(neutral500, bold),
                                ),
                                content: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    color: primary,
                                    height: size.height * 0.2,
                                  ),
                                ),
                              ),
                            ]),
                        SizedBox(
                          height: size.height * 0.05,
                        )
                      ]),
                ),
              ],
            ),
          ),

          // SizedBox(
          //     height: size.height * 0.5,
          //     width: size.width * 2,
          //     child: ),
          Positioned(
            bottom: size.height * 0.02,
            // left: size.width * 0.16,
            child: Container(
              width: size.width,
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: RoundedButton(
                text: "Lihat Tracking",
                ontap: () {
                  Navigator.pushNamed(context, RouteName.lihatTracking);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
