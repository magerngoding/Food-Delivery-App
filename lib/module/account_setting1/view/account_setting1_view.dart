import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/account_setting1/data/data_dummy.dart';

class AccountSetting1View extends StatefulWidget {
  const AccountSetting1View({Key? key}) : super(key: key);

  Widget build(context, AccountSetting1Controller controller) {
    controller.view = this;

    bool switchValue = true;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24.0,
                ),
                Text(
                  "Account Settings",
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Update your setting like notifiations,\npayments, profile edit, etc.",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: secondaryTextColor,
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                ListView.builder(
                  itemCount: AccountData.accountDataList.length,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var item = AccountData.accountDataList[index];
                    return Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              item['leading_icon'],
                              color: index == 9 ? primaryColor : Colors.black,
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            if (item['subtitle'] == null)
                              Text(
                                item['title'],
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            if (item['subtitle'] != null)
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item['title'],
                                    style: TextStyle(
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    item['subtitle'],
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: secondaryTextColor,
                                    ),
                                  ),
                                ],
                              ),
                            Spacer(),
                            Icon(
                              item['action_icon'],
                            ),
                            if (item['action_icon'] == null)
                              CupertinoSwitch(
                                  // This bool value toggles the switch.
                                  value: switchValue,
                                  activeColor: CupertinoColors.activeBlue,
                                  onChanged: (bool? value) {
                                    // This is called when the user toggles the switch.
                                    setState(() {
                                      switchValue = value ?? false;
                                    });
                                  }),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        if (index == 5)
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 30,
                              bottom: 10,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "NOTIFICATIONS",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (index == 8)
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 30,
                              bottom: 10,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "MODE",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<AccountSetting1View> createState() => AccountSetting1Controller();

  void setState(Null Function() param0) {}
}
