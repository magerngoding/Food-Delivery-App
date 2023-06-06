// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class QActionBtutton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final double? width;

  const QActionBtutton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const padding = 20.0;
    return Container(
      padding: EdgeInsets.all(padding),
      width: width ?? MediaQuery.of(context).size.width,
      height: 48 + (padding * 2),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff22a45d),
        ),
        onPressed: () => onPressed(),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
