import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/order_list1/data/data_dummy.dart';

class OrderList1View extends StatefulWidget {
  const OrderList1View({Key? key}) : super(key: key);

  Widget build(context, OrderList1Controller controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 16.0,
                ),
                Text(
                  "Your Orders",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 41.0,
                ),
                H6(
                  title: 'UPCOMMING ORDERS',
                  subtitle: 'CLEAR ALL',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: OrderList.upcommingOrderList.length,
                  physics: const ScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    var item = OrderList.upcommingOrderList[index];
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 20.0,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.network(
                              item['image'],
                              width: 110.0,
                              height: 110.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 18.0,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item['title'],
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 6.0,
                              ),
                              Text(
                                item['description'],
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                height: 12.0,
                              ),
                              Row(
                                children: [
                                  Text("\$\$"),
                                  DotContainer(),
                                  Text(
                                    item['country'],
                                  ),
                                  Spacer(),
                                  Text(
                                    'USD 7.4',
                                    style: TextStyle(
                                      color: primaryColor,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 34.0,
                ),
                Opacity(
                  opacity: 0.4,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: OrderList.pastOrderList.length,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      var item = OrderList.pastOrderList[index];
                      return Column(
                        children: [
                          if (index == 0)
                            H6(
                              title: 'UPCOMMING ORDERS',
                              subtitle: 'CLEAR ALL',
                              onPressed: () {},
                            ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  bottom: 20.0,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    item['image'],
                                    width: 110.0,
                                    height: 110.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 18.0,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item['title'],
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 6.0,
                                    ),
                                    Text(
                                      item['description'],
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 12.0,
                                    ),
                                    Row(
                                      children: [
                                        Text("\$\$"),
                                        DotContainer(),
                                        Text(
                                          item['country'],
                                        ),
                                        Spacer(),
                                        Text(
                                          'USD 7.4',
                                          style: TextStyle(
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
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 34.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<OrderList1View> createState() => OrderList1Controller();
}
