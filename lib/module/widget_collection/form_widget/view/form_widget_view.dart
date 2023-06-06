import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/form_widget_controller.dart';

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
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<FormWidgetView> createState() => FormWidgetController();
}