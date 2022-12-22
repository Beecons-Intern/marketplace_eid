import 'package:flutter/material.dart';
import 'package:marketplace/utilities/color.dart';

import '../../../../utilities/text_styles.dart';

class BuildPengiriman extends StatefulWidget {
  const BuildPengiriman({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<BuildPengiriman> createState() => _BuildPengirimanState();
}

class _BuildPengirimanState extends State<BuildPengiriman> {
  int? _value = 0;

  List<String> itemPengiriman = [
    "Cargo",
    "JNT Express",
    "JNE Trucking",
    "Ninja Express",
  ];
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showBottomSheet(
          context: context,
          builder: (context) => Container(
            height: widget.size.height * 0.3,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: neutral500,
                    blurRadius: 24,
                    offset: Offset(4, 8),
                  ),
                ],
                color: neutral100,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: ListView.builder(
              itemCount: itemPengiriman.length,
              itemBuilder: (context, index) => Row(
                children: [
                  Radio(
                    fillColor:
                        MaterialStateColor.resolveWith((states) => primary900),
                    value: _value,
                    groupValue: index,
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    },
                  ),
                  Text(
                    itemPengiriman[index],
                    style: text3(neutral500, regular),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      title: Text(
        "Opsi Pengiriman",
        style: text3(neutral500, regular),
        overflow: TextOverflow.clip,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
