import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/shared/widget/form/radio_with_header/radio_with_header.dart';

import '../../../shared/widget/typography/category_list.dart';

class ProductDetail3View extends StatefulWidget {
  const ProductDetail3View({Key? key}) : super(key: key);

  Widget build(context, ProductDetail3Controller controller) {
    controller.view = this;

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
    ));

    return SafeArea(
      top: false,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    "https://i.ibb.co/dG68KJM/photo-1513104890138-7c749659a591-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).padding.top,
                      left: 18,
                    ),
                    child: FloatingActionButton(
                      onPressed: () => Get.back(),
                      mini: true,
                      backgroundColor: Colors.black45,
                      child: Icon(
                        Icons.close,
                        size: 28,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cookie Sandwich",
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Shortbread, chocolate, turtle cookies and red velvet, 8 ounces cream sheese, foftened",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 17.0,
                    ),
                    QCategory_list(
                      items: [
                        '\$\$',
                        'Masakan Nusantara',
                        'Padang',
                        'Bekasi',
                      ],
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    QRadioFieldWithHeader(
                      label: "Cookie of top Cookie",
                      validator: Validator.atLeastOneitem,
                      primary: false,
                      items: [
                        {
                          "label": "Chocolate Chip",
                          "value": "Chocolate Chip",
                        },
                        {
                          "label": "Cookies and Cream",
                          "value": "Cookies and Cream",
                        },
                        {
                          "label": "Funfetti",
                          "value": "Funfetti",
                        },
                        {
                          "label": "M and M",
                          "value": "M and M",
                        },
                        {
                          "label": "Red Velvet",
                          "value": "Red Velvet",
                        }
                      ],
                      onChanged: (value, label) {},
                    ),
                    QRadioFieldWithHeader(
                      label: "Choice of Bottom Cookie",
                      validator: Validator.atLeastOneitem,
                      primary: false,
                      items: [
                        {
                          "label": "Chocolate Chip",
                          "value": "Chocolate Chip",
                        },
                        {
                          "label": "Cookies and Cream",
                          "value": "Cookies and Cream",
                        },
                        {
                          "label": "Funfetti",
                          "value": "Funfetti",
                        },
                        {
                          "label": "M and M",
                          "value": "M and M",
                        },
                        {
                          "label": "Red Velvet",
                          "value": "Red Velvet",
                        }
                      ],
                      onChanged: (value, label) {},
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text('Add Special Instructions'),
                      trailing: Icon(
                        Icons.arrow_forward_ios_sharp,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              QActionBtutton(
                label: 'Checkout',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ProductDetail3View> createState() => ProductDetail3Controller();
}
