// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../theme/theme_config.dart';

class QDigit extends StatefulWidget {
  final Function(String value) onChanged;
  const QDigit({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<QDigit> createState() => _QDigitState();
}

class _QDigitState extends State<QDigit> {
  List<String> values = [];
  Map<int, FocusNode> focusNodes = {};

  @override
  void initState() {
    Future.delayed(Duration(microseconds: 500), () {
      focusNodes[0]!.requestFocus();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 12.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () async {
                values = [];
                setState(() {});
                await Future.delayed(Duration(seconds: 1));
                focusNodes[0]!.requestFocus();
              },
              child: Text(
                "Reset",
                style: TextStyle(
                  fontSize: 12.0,
                  color: primaryColor,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                16.0,
              ),
            ),
          ),
          child: Row(
            children: List.generate(4, (index) {
              if (focusNodes[index] == null) {
                focusNodes[index] = FocusNode();
              }
              return Expanded(
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: EdgeInsets.only(
                    right: index < 3 ? 12 : 0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      bottom: BorderSide(
                        width: 2,
                        color: Colors.grey[700]!,
                      ),
                    ),
                  ),
                  child: Center(
                    child: TextFormField(
                      key: GlobalKey(),
                      focusNode: focusNodes[index],
                      initialValue: values.length > index ? values[index] : '',
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      readOnly: values.length != index,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        hintText: '',
                        border: InputBorder.none,
                        filled: false,
                      ),
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                      onChanged: (value) async {
                        if (value == '') {
                          values.remove(value);
                        } else {
                          values.add(value);
                        }

                        setState(() {});
                        await Future.delayed(Duration(milliseconds: 50));
                        if (index == 0) {
                          focusNodes[index++]!.requestFocus();
                        }
                        if (index == 1) {
                          focusNodes[index++]!.requestFocus();
                        }
                        if (index == 2) {
                          focusNodes[index++]!.requestFocus();
                        }

                        if (values.length == 4) {
                          widget.onChanged(values.join(''));
                        }
                      },
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
