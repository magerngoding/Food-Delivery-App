import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ProductList2View extends StatefulWidget {
  const ProductList2View({Key? key}) : super(key: key);

  Widget build(context, ProductList2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Browse Foods",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
        leading: InkWell(
          onTap: () {},
          child: const Icon(
            Icons.arrow_back_ios,
            size: 24.0,
          ),
        ),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              ListView.builder(
                itemCount: controller.products.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  var item = controller.products[index];
                  return ProductVerticalCard(
                    images: [
                      item['photo'],
                      "https://images.unsplash.com/photo-1590947132387-155cc02f3212?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
                    ],
                    title: item['product_name'],
                    categories: [
                      'Masakan Nusantara',
                      'Padang',
                      'Sumatskut',
                    ],
                    ratingCount: 300,
                    delivery: 'Free',
                    rating: 4.6,
                    time: '15 Min',
                    margin: const EdgeInsets.only(
                      bottom: 20.0,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProductList2View> createState() => ProductList2Controller();
}
