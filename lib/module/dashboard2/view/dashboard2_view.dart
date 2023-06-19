import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hyper_ui/core.dart';
import '../../../shared/widget/card/product_rating_card/product_rating_card.dart';
import '../../../shared/widget/uncategorized/location_text.dart';

class Dashboard2View extends StatefulWidget {
  const Dashboard2View({Key? key}) : super(key: key);

  Widget build(context, Dashboard2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 0,
        title: Stack(
          children: [
            Row(
              children: [
                Spacer(),
                QLocationText(
                  title: 'Delivery to',
                  onPressed: () {
                    Get.back();
                  },
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: const Text("Filter"),
                ),
              ],
            ),
          ],
        ),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 10,
                children: List.generate(
                  controller.products.length,
                  (index) {
                    var item = controller.products[index];
                    bool evenLine = index % 2 == 0;
                    return StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: evenLine ? 1.4 : 1.8,
                      child: ProductRatingCard(
                        image: item['photo'],
                        title: item['product_name'],
                        categories: [
                          'Chinese',
                          'Traditional',
                        ],
                        rating: 4.5,
                        time: '15Min',
                        delivery: 'Free',
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Dashboard2View> createState() => Dashboard2Controller();
}
