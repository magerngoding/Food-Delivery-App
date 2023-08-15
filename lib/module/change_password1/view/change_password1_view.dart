import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/UnderlineTextField/custome_underline_textfield.dart';
import '../controller/change_password1_controller.dart';

class ChangePassword1View extends StatefulWidget {
  const ChangePassword1View({Key? key}) : super(key: key);

  Widget build(context, ChangePassword1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ChangePassword1"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [
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
                        "Profile Settings",
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
                height: 40.0,
              ),
              CustomeUnderlineTextField(
                labelText: 'PASSWORD',
                initialValue: 'password',
                obscureText: true,
                readOnly: true,
                suffixIcon: Icon(
                  Icons.visibility_off,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomeUnderlineTextField(
                labelText: 'NEW PASSWORD',
                initialValue: 'newpassword',
                obscureText: true,
                readOnly: false,
                suffixIcon: Icon(
                  Icons.visibility_off,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              CustomeUnderlineTextField(
                labelText: 'CONFIRM PASSWORD',
                initialValue: 'newpassword',
                obscureText: true,
                readOnly: false,
                suffixIcon: Icon(
                  Icons.visibility_off,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ChangePassword1View> createState() => ChangePassword1Controller();
}
