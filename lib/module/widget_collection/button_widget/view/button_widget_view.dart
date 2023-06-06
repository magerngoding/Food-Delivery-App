import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/button/action_button.dart';
import 'package:hyper_ui/shared/widget/button/action_button_with_option.dart';
import 'package:hyper_ui/shared/widget/button/button.dart';
import 'package:hyper_ui/shared/widget/button/outilne_button.dart';
import 'package:hyper_ui/shared/widget/button/outilne_icon_button.dart';
import 'package:hyper_ui/shared/widget/button/outline_danger_button.dart';
import 'package:hyper_ui/shared/widget/button/outline_success_button.dart';
import '../controller/button_widget_controller.dart';

class ButtonWidgetView extends StatefulWidget {
  const ButtonWidgetView({Key? key}) : super(key: key);

  Widget build(context, ButtonWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ButtonWidget"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: QBtutton(
                  label: 'Save',
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              QOutlineBtutton(
                label: 'Checkout',
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QOutlineIconBtutton(
                label: 'Cek',
                onPressed: () {},
                icon: Icons.card_membership_outlined,
              ),
              const SizedBox(
                height: 12.0,
              ),
              QOutlineSuccessBtutton(
                label: 'Nice',
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QOutlineDangerBtutton(
                label: 'Danger',
                onPressed: () {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.all(
                  10,
                ),
                child: Text(
                  "Button Button",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              QActionBtutton(
                label: 'Checkout',
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QActionBtuttonWithOption(
                label: 'Checkout',
                onPressed: () {},
                icon: Icons.share_outlined,
                onOptionPressed: () {},
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: QActionBtutton(
        label: 'Checkout',
        onPressed: () {},
      ),
    );
  }

  @override
  State<ButtonWidgetView> createState() => ButtonWidgetController();
}
