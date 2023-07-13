import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class Register1View extends StatefulWidget {
  const Register1View({Key? key}) : super(key: key);

  Widget build(context, Register1Controller controller) {
    controller.view = this;

    return Scaffold(
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
                    "Create Account",
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
                          text:
                              "Enter your name, email and password for sign up.",
                          style: TextStyle(),
                        ),
                        TextSpan(
                          text: " Already have account.",
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
                  QTextField(
                    label: "Full Name",
                    validator: Validator.required,
                    onChanged: (value) {},
                  ),
                  QTextField(
                    label: "Email",
                    validator: Validator.email,
                    suffixIcon: Icons.email,
                    onChanged: (value) {},
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  QTextField(
                    label: "Password",
                    obscure: true,
                    validator: Validator.required,
                    suffixIcon: Icons.password,
                    onChanged: (value) {},
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  QBtutton(
                    label: 'Register',
                    onPressed: () {},
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
                  Center(
                    child: Text(
                      "Or",
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  QBtutton(
                    label: 'Connect with Facebook',
                    color: Color(0xff395998),
                    icon: MdiIcons.facebook,
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  QBtutton(
                    label: 'Connect with Google',
                    color: Color(0xff4285F4),
                    icon: MdiIcons.google,
                    onPressed: () {},
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
  State<Register1View> createState() => Register1Controller();
}
