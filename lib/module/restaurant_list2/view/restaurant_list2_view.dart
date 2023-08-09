import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:latlong2/latlong.dart';

class RestaurantList2View extends StatefulWidget {
  const RestaurantList2View({Key? key}) : super(key: key);

  Widget build(context, RestaurantList2Controller controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 2,
                        decoration: const BoxDecoration(),
                        child: Stack(
                          children: [
                            Builder(
                              builder: (context) {
                                List<Marker> allMarkers = [
                                  Marker(
                                    point: LatLng(
                                      -6.1754234,
                                      106.827224,
                                    ),
                                    builder: (context) => const Icon(
                                      Icons.pin_drop,
                                      color: Colors.red,
                                      size: 24,
                                    ),
                                  ),
                                ];
                                return SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  child: FlutterMap(
                                    options: MapOptions(
                                      center: LatLng(
                                        -6.1754234,
                                        106.827224,
                                      ),
                                      zoom: 16,
                                      interactiveFlags: InteractiveFlag.all -
                                          InteractiveFlag.rotate,
                                    ),
                                    children: [
                                      TileLayer(
                                        urlTemplate:
                                            'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                                        userAgentPackageName:
                                            'dev.fleaflet.flutter_map.example',
                                      ),
                                      MarkerLayer(
                                        markers: allMarkers,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            Positioned(
                              top: 10,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 50.0,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      8.0,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: Icon(
                                          Icons.arrow_back_ios,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.search,
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 300,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(
                                16,
                              ),
                            ),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 36.0,
                              ),
                              H3(
                                title: 'Top Pick Restaurants',
                              ),
                              const SizedBox(
                                height: 16.0,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                controller: ScrollController(),
                                child: Row(
                                  children: List.generate(
                                    controller.category.length,
                                    (index) {
                                      var item = controller.category[index];
                                      bool selected = index == 0;

                                      return Container(
                                        height: 38,
                                        width: 101,
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0,
                                          vertical: 8.0,
                                        ),
                                        margin:
                                            const EdgeInsets.only(right: 10.0),
                                        decoration: BoxDecoration(
                                          color: selected
                                              ? primaryColor.withOpacity(0.1)
                                              : Colors.grey.withOpacity(0.1),
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(16.0),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "$item",
                                            style: TextStyle(
                                                color: selected
                                                    ? primaryColor
                                                    : Colors.grey),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 49.0,
                              ),
                              GridView.builder(
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 1 / 2,
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 6,
                                  crossAxisSpacing: 6,
                                ),
                                itemCount: controller.products.length,
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  var item = controller.products[index];
                                  return Container(
                                    height: 200,
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<RestaurantList2View> createState() => RestaurantList2Controller();
}
