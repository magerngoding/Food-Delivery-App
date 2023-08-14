import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/card_list1_controller.dart';

class CardList1View extends StatefulWidget {
  const CardList1View({Key? key}) : super(key: key);

  Widget build(context, CardList1Controller controller) {
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
                  height: 57.0,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.network(
                        "https://i.ibb.co/pvCqDGK/paypal-icon.png",
                        width: 40.0,
                        height: 34.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Paypal",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          "Default Payment",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 16.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.network(
                        "https://logodownload.org/wp-content/uploads/2014/07/mastercard-logo.png",
                        width: 40.0,
                        height: 34.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "MasterCard",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          "Not Default",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 16.0,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.network(
                        "https://i.ibb.co/wr704s6/visa-icon.png",
                        width: 40.0,
                        height: 34.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Visa",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 12.0,
                        ),
                        Text(
                          "Not Default",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 16.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<CardList1View> createState() => CardList1Controller();
}
