// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class QActionBtuttonWithOption extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function onPressed;
  final Function onOptionPressed;

  const QActionBtuttonWithOption({
    Key? key,
    required this.label,
    required this.icon,
    required this.onPressed,
    required this.onOptionPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const padding = 20.0;
    return Container(
      padding: EdgeInsets.all(padding),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 48,
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
            ),
          ),
          const SizedBox(
            width: 16.0,
          ),
          Container(
            width: 68,
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffe8e8e8e8),
                foregroundColor: Color(0xfff545d58),
              ),
              onPressed: () => onOptionPressed(),
              child: Icon(
                icon,
                size: 24.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
