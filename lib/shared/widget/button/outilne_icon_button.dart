// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class QOutlineIconBtutton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final IconData icon;
  final double? width;

  const QOutlineIconBtutton({
    Key? key,
    required this.label,
    required this.onPressed,
    required this.icon,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width,
      height: 48,
      child: OutlinedButton.icon(
        icon: Icon(
          icon,
          color: Color(0xFF434D48),
        ),
        label: Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF434D48),
          ),
        ),
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.green,
          side: const BorderSide(
            color: Color(0xffd9dbd9),
          ),
        ),
        onPressed: () => onPressed(),
      ),
    );
  }
}
