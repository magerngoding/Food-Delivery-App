import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class Login1View extends StatefulWidget {
  const Login1View({Key? key}) : super(key: key);

  Widget build(context, Login1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Sign In'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Wellcome to",
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
                        text: "Enter your Phone number or Email for Sign Up.",
                        style: TextStyle(),
                      ),
                      TextSpan(
                        text: " Create new account.",
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
                Center(
                  child: Text(
                    "Forgot password",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                QBtutton(
                  label: 'SIGN IN',
                  onPressed: () {},
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
    );
  }

  @override
  State<Login1View> createState() => Login1Controller();
}
