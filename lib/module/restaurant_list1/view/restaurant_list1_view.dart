// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:hyper_ui/core.dart';

class RestaurantList1View extends StatefulWidget {
  const RestaurantList1View({Key? key}) : super(key: key);

  Widget build(context, RestaurantList1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("RestaurantList1"),
        centerTitle: true,
        actions: const [],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: controller.restaurantList.length,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 20.0,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          //Buat ambil data dari dummyData
          final item = controller.restaurantList[index];
          return ProductVerticalCard(
            images: item.images,
            title: 'Nasi Bebek',
            categories: item.categories,
            rating: item.rating,
            ratingCount: item.ratingCount,
            time: '30Min',
            delivery: 'Free',
          );
        },
      ),
    );
  }

  @override
  State<RestaurantList1View> createState() => RestaurantList1Controller();
}
