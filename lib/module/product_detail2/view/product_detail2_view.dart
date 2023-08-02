// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:hyper_ui/core.dart';

class ProductDetail2View extends StatefulWidget {
  const ProductDetail2View({Key? key}) : super(key: key);

  Widget build(context, ProductDetail2Controller controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ProductDetail2"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              H3(
                title: 'Myfiekd Bakery  & Cafe',
              ),
              const SizedBox(
                height: 14.0,
              ),
              Row(
                children: [
                  Text(
                    "\$\$",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  DotContainer(),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "Chinese",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                  DotContainer(),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "American Deshi Food",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                  DotContainer(),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "Deshi Food",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14.0,
              ),
              Row(
                children: [
                  Text(
                    "4.3",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                  const SizedBox(
                    width: 9.0,
                  ),
                  Icon(
                    Icons.star,
                    size: 24.0,
                    color: primaryColor,
                  ),
                  const SizedBox(
                    width: 9.0,
                  ),
                  Text(
                    "200+ Ratings",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14.0,
              ),
              Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.monetization_on,
                        size: 24.0,
                        color: primaryColor,
                      ),
                      const SizedBox(
                        width: 6.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Free",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Delivery",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.timer_sharp,
                        size: 24.0,
                        color: primaryColor,
                      ),
                      const SizedBox(
                        width: 6.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Free",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Delivery",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 38,
                        width: 113,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.green,
                            side: const BorderSide(
                              color: Colors.green,
                            ),
                          ),
                          onPressed: () {},
                          child: const Text("Take Away"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 34.0,
              ),
              H4(
                title: 'Featured Items',
              ),
              const SizedBox(
                height: 18.0,
              ),
              SizedBox(
                height: 200.0,
                child: ListView.builder(
                  itemCount: controller.products.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    var item = controller.products[index];
                    return CardProductDetail1(
                      image: item['photo'],
                      title: item['product_name'],
                      subTitle: 'Chineese',
                      margin: EdgeInsets.only(
                        right: 10,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 34.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                controller: ScrollController(),
                child: Row(
                  children: List.generate(
                    controller.dataMenu.length,
                    (index) {
                      var item = controller.dataMenu[index];
                      bool selected = index == 0;

                      return Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 8.0,
                        ),
                        margin: const EdgeInsets.only(right: 10.0),
                        child: InkWell(
                          onTap: () {
                            controller.selectedItem = item;
                            controller.setState(() {});
                          },
                          child: Center(
                            child: Text(
                              "${item}",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: (controller.selectedItem == index)
                                    ? FontWeight.w600
                                    : FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 28.0,
              ),
              H5(
                title: 'Most Polulars',
              ),
              const SizedBox(
                height: 24.0,
              ),
              Container(
                height: 380,
                child: ListView.builder(
                  itemCount: controller.productPopular.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    var item = controller.productPopular[index];

                    return CardDetail2(
                      image: item['photo'],
                      title: item['product_name'],
                      subTitle:
                          'Shortbread, choocolate turtle cookies and red velvet.',
                      category: item['category'],
                      price: item['price'],
                      margin: const EdgeInsets.only(
                        bottom: 10.0,
                      ),
                    );
                  },
                ),
              ),
              H5(
                title: 'Sea Foods',
              ),
              const SizedBox(
                height: 24.0,
              ),
              Container(
                height: 380,
                child: ListView.builder(
                  itemCount: controller.productSeaFood.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  clipBehavior: Clip.none,
                  itemBuilder: (context, index) {
                    var item = controller.productSeaFood[index];

                    return CardDetail2(
                      image: item['photo'],
                      title: item['product_name'],
                      subTitle:
                          'Shortbread, choocolate turtle cookies and red velvet.',
                      category: item['category'],
                      price: 7.4,
                      margin: const EdgeInsets.only(
                        bottom: 10.0,
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

  State<ProductDetail2View> createState() => ProductDetail2Controller();
}

class CardDetail2 extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final String category;
  final double price;
  EdgeInsetsGeometry? margin;

  CardDetail2({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.category,
    required this.price,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      width: 322,
      margin: margin,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    image,
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
          ),
          const SizedBox(
            width: 18.0,
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  children: [
                    Text(
                      "\$\$",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    DotContainer(),
                    Text(
                      category,
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "USD ${price}",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: primaryColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardProductDetail1 extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final EdgeInsetsGeometry? margin;

  const CardProductDetail1({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: 140,
      margin: margin,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    image,
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
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "\$\$",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              DotContainer(),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
