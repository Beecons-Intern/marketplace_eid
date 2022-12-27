import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/presentation/routes/page_name.dart';

import '../../../../utilities/color.dart';
import '../../../../utilities/text_styles.dart';

class BuildListviewSelesai extends StatefulWidget {
  const BuildListviewSelesai({
    Key? key,
  }) : super(key: key);

  @override
  State<BuildListviewSelesai> createState() => _BuildListviewSelesaiState();
}

class _BuildListviewSelesaiState extends State<BuildListviewSelesai> {
  int? selectedItem;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              selectedItem = index;
            });
            Navigator.pushNamed(context, RouteName.detailHistory);
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: neutral300),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: size.height * 0.01,
                            horizontal: size.width * 0.01),
                        child: const Center(
                          child: Icon(
                            IconlyLight.work,
                            color: primary900,
                            size: 40,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Belanja",
                            style: text3(neutral500, regular),
                          ),
                          SizedBox(height: size.height * 0.01),
                          Text(
                            "17/09/2022",
                            style: text3(neutral200, regular),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        maxRadius: 10,
                        backgroundColor: primary900,
                        child: Icon(
                          Icons.done_outlined,
                          color: neutral100,
                          size: 10,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Selesai",
                        style: text3(primary900, regular),
                      )
                    ],
                  )
                ],
              ),
              const Divider(thickness: 2, color: neutral200),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.01,
                        horizontal: size.width * 0.01),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(color: neutral200),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Image(
                        image: const AssetImage('assets/images/toilet.png'),
                        width: size.width * 0.1,
                      )),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Aerozone Shower Toilet CEA55321-",
                        style: text3(neutral500, regular),
                      ),
                      Text(
                        "1x",
                        style: text4(neutral500, regular),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      "Total Pembayaran",
                      style: text3(neutral400, regular),
                    ),
                  ),
                  Text(
                    "Rp. 3.100.000",
                    style: text3(neutral500, bold),
                  )
                ],
              ),
              const Divider(thickness: 2, color: neutral200),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pesanan Telah Diterima",
                    style: text4(primary900, regular),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.04,
                            vertical: size.height * 0.01),
                        decoration: BoxDecoration(
                            border: Border.all(color: primary900),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "Beli Lagi",
                            style: text4(primary900, regular),
                          ),
                        ),
                      ),
                      SizedBox(width: size.width * 0.02),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.04,
                            vertical: size.height * 0.01),
                        decoration: BoxDecoration(
                            border: Border.all(color: primary900),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "Beri Nilai",
                            style: text4(primary900, regular),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ]),
          ),
        );
      },
    );
  }
}
