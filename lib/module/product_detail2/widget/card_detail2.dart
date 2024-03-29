import 'package:flutter/material.dart';

import '../../../shared/theme/theme_config.dart';
import '../../../shared/widget/shape/dot_container.dart';

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
