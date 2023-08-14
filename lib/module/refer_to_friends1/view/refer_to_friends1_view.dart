import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ReferToFriends1View extends StatefulWidget {
  const ReferToFriends1View({Key? key}) : super(key: key);

  Widget build(context, ReferToFriends1Controller controller) {
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
                          "Refer to Friends",
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
                  height: 54.0,
                ),
                Image.network(
                  "https://i.ibb.co/GJkh0KD/greengift-illustration.png",
                  width: 120.0,
                  height: 120.0,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Refer a Friend, Get \$10",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Text(
                  "Get \$ in credits when someone sign up\nusing your refer link",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: secondaryTextColor,
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Container(
                  width: 245,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(248, 248, 248, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 14.0,
                        ),
                        Image.network(
                          "https://i.ibb.co/d76LdxQ/share-icon-removebg-preview.png",
                          width: 20.0,
                          height: 20.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        Text(
                          "https://ui8.net/76738b",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 203.0,
                ),
                QBtutton(
                  label: 'Email',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 20.0,
                ),
                QOutlineBtutton(
                  label: 'OTHERS',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<ReferToFriends1View> createState() => ReferToFriends1Controller();
}
