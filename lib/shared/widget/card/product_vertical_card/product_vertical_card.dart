// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

// ignore: must_be_immutable
class ProductVerticalCard extends StatelessWidget {
  final List<String> images;
  final String title;
  final List<String> categories;
  final double rating;
  final int ratingCount;
  final String time;
  final String delivery;
  final EdgeInsetsGeometry? margin;

  ProductVerticalCard({
    Key? key,
    required this.images,
    required this.title,
    required this.categories,
    required this.rating,
    required this.ratingCount,
    required this.time,
    required this.delivery,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (images.length == 1)
            Container(
              height: 160.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    16.0,
                  ),
                ),
                image: DecorationImage(
                  image: NetworkImage(
                    images.first,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          if (images.length > 1)
            QCarouselBottomRightSlider(
              images: images,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              height: 160,
            ),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          SingleChildScrollView(
            controller: ScrollController(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(categories.length, (index) {
                var category = categories[index];
                return Row(
                  children: [
                    if (index > 0) DotCenter(),
                    Text(
                      "${category}",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
          const SizedBox(
            height: 9.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${rating}',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 9.0,
              ),
              const Icon(
                Icons.star,
                size: 12.0,
                color: Colors.green,
              ),
              const SizedBox(
                width: 9.0,
              ),
              Text(
                '${ratingCount} +Ratings',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 9.0,
              ),
              const Icon(
                Icons.timer,
                size: 12.0,
              ),
              const SizedBox(
                width: 9.0,
              ),
              Text(
                time,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 9.0,
              ),
              const Icon(
                Icons.money_sharp,
                size: 12.0,
              ),
              const SizedBox(
                width: 9.0,
              ),
              Text(
                delivery,
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
