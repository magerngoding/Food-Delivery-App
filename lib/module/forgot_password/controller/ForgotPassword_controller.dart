import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/ForgotPassword_view.dart';

class ForgotPasswordController extends State<ForgotPasswordView>
    implements MvcController {
  static late ForgotPasswordController instance;
  late ForgotPasswordView view;

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
