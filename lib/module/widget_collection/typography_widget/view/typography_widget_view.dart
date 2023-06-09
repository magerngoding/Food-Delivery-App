import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/typography_widget_controller.dart';

class TypographyWidgetView extends StatefulWidget {
  const TypographyWidgetView({Key? key}) : super(key: key);

  Widget build(context, TypographyWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TypographyWidget"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<TypographyWidgetView> createState() => TypographyWidgetController();
}