import 'package:flutter/material.dart';
import 'package:marketplace/presentation/screens/widget/build_textfields.dart';
import 'package:marketplace/presentation/screens/widget/rounded_button.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class BodyLokasiScreen extends StatelessWidget {
  const BodyLokasiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: size.height * 0.02, horizontal: size.width * 0.05),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Informasi Penerima",
            style: text3(neutral500, semibold),
          ),
          SizedBox(height: size.height * 0.02),
          const BuildTextField(
              hint: "Nama Penerima",
              name: "penerima",
              keyboardType: TextInputType.name),
          SizedBox(height: size.height * 0.02),
          const BuildTextField(
              hint: "Nomor Telepon",
              name: "noTelepon",
              keyboardType: TextInputType.name),
          SizedBox(height: size.height * 0.05),
          Text(
            "Alamat Penerima",
            style: text3(neutral500, semibold),
          ),
          SizedBox(height: size.height * 0.02),
          const BuildTextField(
              hint: "Kota, Kabupaten, Provinsi",
              name: "alamat",
              keyboardType: TextInputType.name),
          SizedBox(height: size.height * 0.02),
          const BuildTextField(
              hint: "Kode Pos",
              name: "kodePos",
              keyboardType: TextInputType.name),
          SizedBox(height: size.height * 0.02),
          const BuildTextField(
              hint: "Nama jalan, gedung, no. rumah",
              name: "namajalan",
              keyboardType: TextInputType.name),
          SizedBox(height: size.height * 0.02),
          const BuildTextField(
              hint: "Detail lain (unit no./patokan)",
              name: "patokan",
              keyboardType: TextInputType.name),
          SizedBox(
            height: size.height * 0.2,
          ),
          RoundedButton(
            text: "Simpan",
            ontap: () {
              Navigator.pop(context);
            },
          ),
        ]),
      ),
    );
  
  }
}
