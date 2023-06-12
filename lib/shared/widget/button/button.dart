// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class QBtutton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final double? width;
  final Color? color;
  final IconData? icon;

  const QBtutton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.width,
    this.color,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? Color(0xff22a45d),
        ),
        onPressed: () => onPressed(),
        child: Row(
          children: [
            if (icon != null)
              Icon(
                icon,
                size: 24.0,
              ),
            Spacer(),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
