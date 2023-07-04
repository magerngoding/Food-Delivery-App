// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class QRadioFieldWithHeader extends StatefulWidget {
  final String label;
  final String? hint;
  final List<Map<String, dynamic>> items;
  final String? Function(List<Map<String, dynamic>> item)? validator;
  final Function(dynamic value, String? label) onChanged;
  final String? value;
  final bool? primary;
  final EdgeInsetsGeometry? radioListPadding;
  final EdgeInsetsGeometry? padding;

  const QRadioFieldWithHeader({
    Key? key,
    required this.label,
    this.hint,
    required this.items,
    this.validator,
    required this.onChanged,
    this.value,
    this.primary = true,
    this.radioListPadding,
    this.padding,
  }) : super(key: key);

  @override
  State<QRadioFieldWithHeader> createState() => _QRadioFieldWithHeaderState();
}

class _QRadioFieldWithHeaderState extends State<QRadioFieldWithHeader> {
  List<Map<String, dynamic>> items = [];

  @override
  void initState() {
    super.initState();
    for (var item in widget.items) {
      items.add(Map.from(item));
      if (items.last["value"] == widget.value) {
        items.last["checked"] = true;
      }
    }
  }

  setAllItemsToFalse() {
    for (var item in items) {
      item["checked"] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.padding ??
          EdgeInsets.only(
            bottom: 12,
          ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  widget.label,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Card(
                elevation: 0,
                color: Color(0xfffcebd2),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  child: Text(
                    "Requireq",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xfff1a36d),
                    ),
                  ),
                ),
              ),
            ],
          ),
          FormField(
            initialValue: false,
            validator: (value) => widget.validator!(items),
            enabled: true,
            builder: (FormFieldState<bool> field) {
              return InputDecorator(
                decoration: InputDecoration(
                  fillColor: Colors.transparent,
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                ),
                child: ListView.builder(
                  primary: widget.primary,
                  shrinkWrap: true,
                  padding: widget.radioListPadding,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    var item = items[index];
                    return Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1,
                            color: Color(0xfff0f0f0),
                          ),
                        ),
                      ),
                      child: RadioListTile(
                        title: Text("${item["label"]}"),
                        groupValue: true,
                        value: item["checked"] ?? false,
                        activeColor: Colors.green,
                        onChanged: (val) {
                          setAllItemsToFalse();
                          bool newValue = val ? false : true;
                          items[index]["checked"] = newValue;
                          field.didChange(true);
                          setState(() {});

                          String? label = items[index]["label"];
                          int foundIndex = items
                              .indexWhere((item) => item["label"] == label);
                          dynamic value = items[foundIndex]["value"];
                          widget.onChanged(value, label);
                        },
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
