import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/Intro_view.dart';

class IntroController extends State<IntroView> implements MvcController {
  static late IntroController instance;
  late IntroView view;

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