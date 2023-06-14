// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DotCenter extends StatelessWidget {
  const DotCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      width: 3,
      margin: const EdgeInsets.symmetric(
        horizontal: 7,
      ),
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
    );
  }
}
