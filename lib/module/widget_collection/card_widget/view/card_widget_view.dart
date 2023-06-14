import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class CardWidgetView extends StatefulWidget {
  const CardWidgetView({Key? key}) : super(key: key);

  Widget build(context, CardWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("CardWidget"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //#TEMPLATE q_product_card
              ProductCard(
                image:
                    'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=480&q=80',
                title: 'Pancake',
                location: 'Bogor',
                rating: 4.5,
                time: '15',
                delivery: 'Free',
              ),
              //#END
              const SizedBox(
                height: 20.0,
              ),
              //#TEMPLATE q_product_vertical_card
              ProductVerticalCard(
                images: [
                  "https://images.unsplash.com/photo-1590947132387-155cc02f3212?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
                ],
                title: 'Pizza',
                categories: [
                  'Masakan Nusantara',
                  'Padang',
                  'Sumatskut',
                ],
                ratingCount: 300,
                delivery: 'Free',
                rating: 4.6,
                time: '15 Min',
              ),
              //END

              Divider(),
              //#TEMPLATE q_promotion_card
              PromotionCard(
                title: 'Free Delivery',
                subTitle:
                    r"You've order at least \$10 for using free delivery for 1 month.",
              ),
              //#END
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<CardWidgetView> createState() => CardWidgetController();
}
