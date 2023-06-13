// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:hyper_ui/core.dart';

import '../controller/restaurant_list1_controller.dart';

class RestaurantList1View extends StatefulWidget {
  const RestaurantList1View({Key? key}) : super(key: key);

  Widget build(context, RestaurantList1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("RestaurantList1"),
        actions: const [],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: controller.restaurantList.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 4.0,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          final item = controller.restaurantList[index];
          return Column(
            children: [],
          );
        },
      ),
    );
  }

  @override
  State<RestaurantList1View> createState() => RestaurantList1Controller();
}
