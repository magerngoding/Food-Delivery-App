// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/form/digit/digit.dart';

class ConfirmPhoneNumber1View extends StatefulWidget {
  const ConfirmPhoneNumber1View({
    Key? key,
  }) : super(key: key);

  Widget build(context, ConfirmPhoneNumber1Controller controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Verify Phone Number",
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Enter the 4-Digit code sent to you at ",
                          style: TextStyle(),
                        ),
                        TextSpan(
                          text: "+24148810",
                          style: TextStyle(
                            color: primaryColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  QDigit(
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  QBtutton(
                    label: 'Continue',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "Didn't receive code? ",
                            style: TextStyle(fontSize: 12),
                          ),
                          TextSpan(
                            text: " Resend Again",
                            style: TextStyle(color: primaryColor, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Center(
                    child: Text(
                      "By signing up you agree to our Terms\nCondition & Privacy Policy",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[700],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<ConfirmPhoneNumber1View> createState() =>
      ConfirmPhoneNumber1Controller();
}
