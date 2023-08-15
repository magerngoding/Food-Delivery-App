import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ProfileSetting1View extends StatefulWidget {
  const ProfileSetting1View({Key? key}) : super(key: key);

  Widget build(context, ProfileSetting1Controller controller) {
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "FULL NAME",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: secondaryTextColor,
                      ),
                    ),
                    TextFormField(
                      readOnly: true,
                      initialValue: 'Siraj Hafizh',
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                        fillColor: Colors.white,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(243, 242, 242, 1),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "EMAIL ADDRES",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: secondaryTextColor,
                      ),
                    ),
                    TextFormField(
                      readOnly: true,
                      initialValue: 'sirajhafizh@yahoo.co.id',
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                        fillColor: Colors.white,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(243, 242, 242, 1),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PHONE NUMBER",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: secondaryTextColor,
                      ),
                    ),
                    TextFormField(
                      readOnly: true,
                      initialValue: '+5487960014',
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 0),
                        fillColor: Colors.white,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(243, 242, 242, 1),
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      onChanged: (value) {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 63.0,
                ),
                TextFormField(
                  style: TextStyle(
                    color: Color.fromRGBO(134, 134, 134, 1),
                  ),
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    hintText: 'Full Name',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 14.0,
                ),
                TextFormField(
                  style: TextStyle(
                    color: Color.fromRGBO(134, 134, 134, 1),
                  ),
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    hintText: 'Email Address',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 14.0,
                ),
                TextFormField(
                  obscureText: true,
                  style: TextStyle(
                    color: Color.fromRGBO(134, 134, 134, 1),
                  ),
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    hintText: 'Password',
                    suffixIcon: const Icon(
                      Icons.remove_red_eye,
                      size: 24.0,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 50.0,
                ),
                QBtutton(
                  label: 'CHANGE SETTINGS',
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
  State<ProfileSetting1View> createState() => ProfileSetting1Controller();
}
