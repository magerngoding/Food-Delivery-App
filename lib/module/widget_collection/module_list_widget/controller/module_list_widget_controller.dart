import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/module_list_widget_view.dart';

class ModuleListWidgetController extends State<ModuleListWidgetView> implements MvcController {
  static late ModuleListWidgetController instance;
  late ModuleListWidgetView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}