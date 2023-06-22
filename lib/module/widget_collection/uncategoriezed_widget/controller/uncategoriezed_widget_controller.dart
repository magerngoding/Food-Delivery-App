import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/uncategoriezed_widget_view.dart';

class UncategoriezedWidgetController extends State<UncategoriezedWidgetView>
    implements MvcController {
  static late UncategoriezedWidgetController instance;
  late UncategoriezedWidgetView view;

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
