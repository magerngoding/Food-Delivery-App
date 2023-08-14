import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class AddSocialAccounts1View extends StatefulWidget {
  const AddSocialAccounts1View({Key? key}) : super(key: key);

  Widget build(context, AddSocialAccounts1Controller controller) {
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
                          "Add Soccial Accounts",
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
                  height: 97.0,
                ),
                Text(
                  "Add social accounts",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Text(
                  "Add your soccial accounts for more security\n.You will to directly to their site.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: secondaryTextColor,
                  ),
                ),
                const SizedBox(
                  height: 34.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(57, 89, 152, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 8.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              4,
                            ),
                          ),
                          child: Image.network(
                            "https://i.ibb.co/GWtZKWM/facebook.png",
                            width: 28.0,
                            height: 28.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 50.0,
                        ),
                        Text(
                          "CONNECT WITH FACEBOOK",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 34.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(66, 133, 244, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 8.0,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              4,
                            ),
                          ),
                          child: Image.network(
                            "https://i.ibb.co/KD66dYg/google.png",
                            width: 28.0,
                            height: 28.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 50.0,
                        ),
                        Text(
                          "CONNECT WITH GOOGLE",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<AddSocialAccounts1View> createState() => AddSocialAccounts1Controller();
}
