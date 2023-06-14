import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/uncategorized/location_text.dart';

class UncategoriezedWidgetView extends StatefulWidget {
  const UncategoriezedWidgetView({Key? key}) : super(key: key);

  Widget build(context, UncategoriezedWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("UncategoriezedWidget"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //#TEMPLATE q_location_text
              QLocationText(
                title: 'Delivery',
                onPressed: () {
                  Get.back();
                },
              ),
              //#END
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<UncategoriezedWidgetView> createState() =>
      UncategoriezedWidgetController();
}
