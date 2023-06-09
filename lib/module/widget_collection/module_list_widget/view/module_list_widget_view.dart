import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/module_list_widget_controller.dart';

class ModuleListWidgetView extends StatefulWidget {
  const ModuleListWidgetView({Key? key}) : super(key: key);

  Widget build(context, ModuleListWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ModuleListWidget"),
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
  State<ModuleListWidgetView> createState() => ModuleListWidgetController();
}