import 'package:flutter/material.dart';
import 'package:marketplace/presentation/routes/page_name.dart';
import 'package:marketplace/utilities/color.dart';
import 'package:marketplace/utilities/text_styles.dart';

class CardAlamat extends StatefulWidget {
  const CardAlamat(
      {Key? key,
      required this.nama,
      required this.noTelepon,
      required this.alamat,
      required this.patokan,
      required this.kodePos})
      : super(key: key);
  final String nama;
  final String noTelepon;

  final String alamat;
  final String kodePos;
  final String patokan;

  @override
  State<CardAlamat> createState() => _CardAlamatState();
}

class _CardAlamatState extends State<CardAlamat> {
  int? _value = 0;

  // int? _value = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(
            left: size.width * 0.02,
            top: size.height * 0.03,
            right: size.width * 0.005,
          ),
          leading: Radio(
            value: 1,
            groupValue: 1,
            onChanged: (value) {
              setState(() {
                _value = value as int?;
              });
            },
          ),
          subtitle: Padding(
            padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.patokan),
                Text(widget.alamat),
                // Text("Sleman, Yogyakarta, (55166)"),
              ],
            ),
          ),
          title: RichText(
            text: TextSpan(children: <TextSpan>[
              TextSpan(
                text: widget.nama,
                style: const TextStyle(color: neutral500, fontWeight: bold),
              ),
              TextSpan(
                text: widget.noTelepon,
                style: const TextStyle(color: neutral500, fontWeight: bold),
              ),
            ]),
          ),
          trailing: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              child: Text(
                "Ubah",
                style: text3(primary, bold),
              ),
              onPressed: () {
                Navigator.pushNamed(context, RouteName.ubahAlamat);
                // UbahAlamatScreen();
              },
            ),
          ),
        ),
        const Divider(
          thickness: 1,
          color: neutral300,
        )
      ],
    );
  }
}
