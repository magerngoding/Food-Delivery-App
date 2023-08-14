import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class Locations1View extends StatefulWidget {
  const Locations1View({Key? key}) : super(key: key);

  Widget build(context, Locations1Controller controller) {
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
                          "Payment Method",
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
                  height: 41.0,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6.0,
                    horizontal: 12.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    border: Border.all(
                      width: 1.0,
                      color: Colors.grey[400]!,
                    ),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.location_on_rounded,
                          color: secondaryTextColor,
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          initialValue: null,
                          decoration: const InputDecoration.collapsed(
                            filled: true,
                            fillColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            hintText: "Search new address",
                          ),
                          onFieldSubmitted: (value) {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                H6(
                  title: "RECENT ADDRESS",
                  subtitle: 'CLEAR ALL',
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: secondaryTextColor,
                    ),
                    const SizedBox(
                      width: 17.0,
                    ),
                    Text(
                      "San Fransisco",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: secondaryTextColor,
                    ),
                    const SizedBox(
                      width: 17.0,
                    ),
                    Text(
                      "San Fransisco City Hall",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: secondaryTextColor,
                    ),
                    const SizedBox(
                      width: 17.0,
                    ),
                    Text(
                      "San Fransisco Zoo",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: secondaryTextColor,
                    ),
                    const SizedBox(
                      width: 17.0,
                    ),
                    Text(
                      "San Fransisco, Colorado",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<Locations1View> createState() => Locations1Controller();
}
