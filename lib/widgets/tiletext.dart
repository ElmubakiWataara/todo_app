import 'package:flutter/material.dart';

class Tiletext extends StatelessWidget {
  final String txt;
  final Color txtColor;
  final double txtSize;
  final FontWeight txtFontweight;

  const Tiletext({
    super.key,
    required this.txt,
    required this.txtColor,
    required this.txtSize,
    required this.txtFontweight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        color: txtColor,
        fontSize: txtSize,
        fontWeight: txtFontweight,
      ),
    );
  }
}
