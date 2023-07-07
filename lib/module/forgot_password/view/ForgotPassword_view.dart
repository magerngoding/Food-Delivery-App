import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  Widget build(context, ForgotPasswordController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
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
                "Forgot Password",
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
                          "Enter your email address and we will send you a reset instruction",
                      style: TextStyle(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              QTextField(
                label: "Email",
                validator: Validator.required,
                value: "hafizh@gmail.com",
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              QBtutton(
                label: 'Reset Password',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ForgotPasswordView> createState() => ForgotPasswordController();
}
