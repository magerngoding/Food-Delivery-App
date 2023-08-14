// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class QOutlineBtutton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final double? width;
  final Color? color;

  const QOutlineBtutton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.width,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      height: 42,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          foregroundColor: Color(
            0xff22a45d,
          ),
          side: BorderSide(
            color: color ?? Color(0xffd9dbd9),
          ),
        ),
        onPressed: () => onPressed(),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF434D48),
          ),
        ),
      ),
    );
  }
}
