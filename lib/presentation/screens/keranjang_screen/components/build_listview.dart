import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:marketplace/utilities/color.dart';

import '../../../../utilities/text_styles.dart';

class BuildListview extends StatefulWidget {
  const BuildListview({
    super.key,
    required this.size,
    required this.count,
    required this.kategori,
    required this.text,
    required this.images,
  });

  final Size size;
  final int count;
  final String kategori;
  final String text;
  final String images;

  @override
  State<BuildListview> createState() => _BuildListviewState();
}

class _BuildListviewState extends State<BuildListview> {
  bool isChecked = false;
  int? isSleceted;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
              child: Text(
                widget.kategori,
                style: text3(neutral500, semibold),
              ),
            ),
            const Divider(thickness: 2, color: neutral200),
          ],
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: widget.count,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Image.asset(widget.images,
                          width: widget.size.width * 0.18),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: widget.size.width * 0.4,
                            child: Text(
                              widget.text,
                              style: text3(neutral500, regular),
                            ),
                          ),
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (isSleceted == null) {
                                    isSleceted = index;
                                  } else {
                                    isSleceted = null;
                                  }
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: widget.size.width * 0.03),
                                child: isSleceted != null && isSleceted == index
                                    ? const Icon(
                                        Icons.favorite,
                                        color: accentOrange500,
                                      )
                                    : const Icon(
                                        Icons.favorite_border,
                                        color: primary900,
                                      ),
                              ))
                        ],
                      ),
                      SizedBox(height: widget.size.height * 0.01),
                      Text.rich(
                        TextSpan(
                          text: 'Rp. 29.000/',
                          style: text3(primary900, regular),
                          children: [
                            TextSpan(
                                text: 'buah', style: text3(neutral200, regular))
                          ],
                        ),
                      ),
                      SizedBox(
                        width: widget.size.width * 0.52,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(
                                      'assets/icon/plus-circle.png'),
                                ),
                                SizedBox(width: widget.size.width * 0.02),
                                Text(
                                  "1",
                                  style: text4(neutral300, regular),
                                ),
                                SizedBox(width: widget.size.width * 0.02),
                                GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(
                                      'assets/icon/minus-circle.png'),
                                )
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  IconlyBold.delete,
                                  color: accentOrange500,
                                ))
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
