import 'package:flutter/material.dart';
import 'package:marketplace/utilities/color.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
          border: Border.all(color: primary, width: 2),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: child,
    );
  }
}
