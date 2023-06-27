import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/form/radio_with_header/radio_with_header.dart';

class FormWidgetView extends StatefulWidget {
  const FormWidgetView({Key? key}) : super(key: key);

  Widget build(context, FormWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("FormWidget"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //#TEMPLATE q_radiofield_with_header
              QRadioFieldWithHeader(
                label: "Gender",
                validator: Validator.atLeastOneitem,
                items: [
                  {
                    "label": "Female",
                    "value": 1,
                  },
                  {
                    "label": "Male",
                    "value": 2,
                  }
                ],
                onChanged: (value, label) {},
              ),
              //#END

              QRadioFieldWithHeader(
                label: "Gender",
                validator: Validator.atLeastOneitem,
                items: [
                  {
                    "label": "A",
                    "value": 1,
                  },
                  {
                    "label": "B",
                    "value": 1,
                  },
                  {
                    "label": "C",
                    "value": 1,
                  },
                  {
                    "label": "Female",
                    "value": 1,
                  },
                  {
                    "label": "Male",
                    "value": 2,
                  }
                ],
                onChanged: (value, label) {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<FormWidgetView> createState() => FormWidgetController();
}
