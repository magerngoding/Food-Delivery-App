import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/form/country_picker/country_picker.dart';

class LoginByPhoneNumber1View extends StatefulWidget {
  const LoginByPhoneNumber1View({Key? key}) : super(key: key);

  Widget build(context, LoginByPhoneNumber1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login By Phone Number "),
        actions: const [],
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Center(
              child: Text(
                "Get started with Awesome App",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              "Enter your phone number to use AwesomeApp\n and enjoy your food :)",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            QCountryPicker(
              onChanged: (value) {
                print('value : $value');
              },
            ),
            const SizedBox(
              height: 12.0,
            ),
          ],
        ),
      ),
      bottomNavigationBar: QActionBtutton(
        label: 'Register',
        onPressed: () {},
      ),
    );
  }

  @override
  State<LoginByPhoneNumber1View> createState() =>
      LoginByPhoneNumber1Controller();
}
