import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/locations1_view.dart';

class Locations1Controller extends State<Locations1View> implements MvcController {
  static late Locations1Controller instance;
  late Locations1View view;

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