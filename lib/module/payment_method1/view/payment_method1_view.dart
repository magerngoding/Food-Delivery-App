import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class PaymentMethod1View extends StatefulWidget {
  const PaymentMethod1View({Key? key}) : super(key: key);

  Widget build(context, PaymentMethod1Controller controller) {
    controller.view = this;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.chevron_left,
                      size: 24.0,
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Payment Method",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 117.0,
                ),
                Image.network(
                  "https://i.ibb.co/G2C1mbz/greencard-illustration-removebg.png",
                  width: 150.0,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Text(
                  "Don't have any card :)",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Text(
                  "It's seems like you don't add any credit\nor debit card. You may easily add card.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: secondaryTextColor,
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: QOutlineSuccessBtutton(
                    label: "ADD CREDIT CARDS",
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<PaymentMethod1View> createState() => PaymentMethod1Controller();
}
