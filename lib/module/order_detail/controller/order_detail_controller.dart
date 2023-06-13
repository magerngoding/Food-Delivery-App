import 'package:flutter/material.dart';
import 'package:hyper_ui/state_util.dart';
import '../view/order_detail_view.dart';

class OrderDetailController extends State<OrderDetailView> implements MvcController {
  static late OrderDetailController instance;
  late OrderDetailView view;

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