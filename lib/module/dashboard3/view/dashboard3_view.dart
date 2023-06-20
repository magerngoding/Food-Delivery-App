import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../../../shared/widget/uncategorized/location_text.dart';

class Dashboard3View extends StatefulWidget {
  const Dashboard3View({Key? key}) : super(key: key);

  Widget build(context, Dashboard3Controller controller) {
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
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              QCarouselBottomRightSlider(
                images: [
                  "https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                  "https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
                  "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=781&q=80",
                  "https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80",
                  "https://images.unsplash.com/photo-1482049016688-2d3e1b311543?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=710&q=80",
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                height: 160,
              ),
              const SizedBox(
                height: 12.0,
              ),
              H3(
                title: 'Favorite Products',
                subtitle: 'See all',
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              ListView.builder(
                itemCount: controller.products.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = controller.products[index];
                  return ProductVerticalCard(
                    images: [item['photo']],
                    title: item['product_name'],
                    categories: [
                      'Masakan Nusanrata',
                      'Padang',
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
              H3(
                title: 'Type of Foods',
                subtitle: 'See all',
                onPressed: () {},
              ),
              SingleChildScrollView(
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                child: Row(
                  children:
                      List.generate(controller.categories.length, (index) {
                    var item = controller.categories[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 67.0,
                          width: 67,
                          margin: const EdgeInsets.only(
                            right: 12.0,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                item['image'],
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                8.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 4.0,
                        ),
                        Text(
                          "${item["label"]} (${item["count"]})",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              H3(
                title: 'New Restaurants',
                subtitle: 'See all',
                onPressed: () {},
              ),
              const SizedBox(
                height: 12.0,
              ),
              SingleChildScrollView(
                controller: ScrollController(),
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                child: Row(
                  children: List.generate(10, (index) {
                    return ProductCard(
                      image:
                          'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=480&q=80',
                      title: 'Pancake',
                      location: 'Bogor',
                      rating: 4.5,
                      time: '25Min',
                      delivery: 'Free',
                      margin: const EdgeInsets.only(
                        right: 20.0,
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<Dashboard3View> createState() => Dashboard3Controller();
}
