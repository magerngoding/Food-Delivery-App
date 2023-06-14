// ignore_for_file: public_member_api_docs, sort_constructors_first, invalid_use_of_protected_member, unused_local_variable
import 'package:flutter/material.dart';

import 'package:hyper_ui/core.dart';

import '../../../shared/widget/uncategorized/location_text.dart';

class Dashboard1View extends StatefulWidget {
  Dashboard1View({
    Key? key,
  }) : super(key: key);

  Widget build(context, Dashboard1Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 0,
        centerTitle: true,
        title: QLocationText(
          title: 'Delivery',
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "Filter",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
        ],
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
                height: 20.0,
              ),
              H3(
                  title: 'Feature Partners',
                  subtitle: 'See all',
                  onPressed: () {}),
              const SizedBox(
                height: 12.0,
              ),
              SizedBox(
                height: 255.0,
                child: ListView.builder(
                  itemCount: controller.image.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    var item = controller.image[index];
                    return ProductCard(
                      margin: EdgeInsets.only(
                        right: 12,
                      ),
                      image: item,
                      title: 'Soup',
                      location: 'Bogor',
                      delivery: 'Free',
                      rating: 3.3,
                      time: '20Min',
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              PromotionCard(
                title: 'Free Delivery',
                subTitle:
                    "You've order at least \$10 for using free delivery for 1 month.",
              ),
              const SizedBox(
                height: 24.0,
              ),
              H5(
                title: 'Best Picks Restaurant by team',
                subtitle: 'See all',
              ),
              const SizedBox(
                height: 24.0,
              ),
              SizedBox(
                height: 255.0,
                child: ListView.builder(
                  itemCount: controller.image.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    var item = controller.image[index];
                    return ProductCard(
                      image: item,
                      title: 'Soup',
                      location: 'Jakarta',
                      delivery: 'Free',
                      rating: 3.2,
                      time: '20Min',
                      margin: EdgeInsets.only(
                        right: 12,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              H5(
                title: 'Best Picks Restaurant by team',
                subtitle: 'See all',
              ),
              const SizedBox(
                height: 10.0,
              ),
              ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = {};
                  return ProductVerticalCard(
                    images: [
                      "https://images.unsplash.com/photo-1478145046317-39f10e56b5e9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
                    ],
                    title: 'Pizza',
                    categories: [
                      'Masakan Nusanrata',
                      'Padang',
                    ],
                    ratingCount: 300,
                    delivery: 'Free',
                    rating: 4.6,
                    time: '15 Min',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  State<Dashboard1View> createState() => Dashboard1Controller();
}
