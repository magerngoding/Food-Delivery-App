import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class EnterAddress1View extends StatefulWidget {
  const EnterAddress1View({Key? key}) : super(key: key);

  Widget build(context, EnterAddress1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.close,
            size: 24.0,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Find restaurant near you",
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
                          "Please enter your location or allow access to your location\nto find restaurant near you.",
                      style: TextStyle(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              QOutlineIconBtutton(
                label: 'Use current location',
                icon: Icons.location_on,
                color: primaryColor,
                onPressed: () {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              QTextField(
                label: "Enter a new address",
                validator: Validator.required,
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<EnterAddress1View> createState() => EnterAddress1Controller();
}
