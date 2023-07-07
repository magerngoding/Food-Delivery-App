import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ResetEmail1View extends StatefulWidget {
  const ResetEmail1View({Key? key}) : super(key: key);

  Widget build(context, ResetEmail1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset Email"),
        centerTitle: true,
        elevation: 0,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Reset Email",
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          "We have sent a intructions email to hafizh@gmail.com",
                      style: TextStyle(),
                    ),
                    TextSpan(
                      text: " Having problem?",
                      style: TextStyle(
                        color: primaryColor,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              QBtutton(
                label: 'Send Again',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ResetEmail1View> createState() => ResetEmail1Controller();
}
