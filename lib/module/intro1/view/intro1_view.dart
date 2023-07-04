import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class Intro1View extends StatefulWidget {
  const Intro1View({Key? key}) : super(key: key);

  Widget build(context, Intro1Controller controller) {
    controller.view = this;

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: LayoutBuilder(builder: (context, constraint) {
              List<Map<String, dynamic>> images = [
                {
                  "photo":
                      "https://icons.iconarchive.com/icons/jamespeng/cuisine/256/Pork-Chop-Set-icon.png",
                  "title": "All your favorites",
                  "subtitle":
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
                },
                {
                  "photo":
                      "https://icons.iconarchive.com/icons/streamlineicons/streamline-ux-free/256/delivery-truck-icon.png",
                  "title": "Free delivery ofers",
                  "subtitle":
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
                },
                {
                  "photo":
                      "https://icons.iconarchive.com/icons/klukeart/cubes/256/Box-03-Cake-Cherry-icon.png",
                  "title": "Choose your foods",
                  "subtitle":
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
                },
              ];

              return Column(
                children: [
                  Expanded(
                    child: CarouselSlider(
                      carouselController: controller.carouselController,
                      options: CarouselOptions(
                        height: constraint.maxHeight,
                        autoPlay: true,
                        enlargeCenterPage: false,
                        viewportFraction: 1.0,
                        onPageChanged: (index, reason) {
                          controller.currentIndex = index;
                          // ignore: invalid_use_of_protected_member
                          controller.setState(() {});
                        },
                      ),
                      items: images.map((item) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Column(
                              children: [
                                Expanded(
                                  child: Stack(
                                    children: [
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.8,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xfff1efdd),
                                          ),
                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.6,
                                          child: Image.network(
                                            item['photo'],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(40),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "All your favorites",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8.0,
                                      ),
                                      Text(
                                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: images.asMap().entries.map((entry) {
                      bool isSelected = controller.currentIndex == entry.key;
                      return GestureDetector(
                        onTap: () => controller.carouselController
                            .animateToPage(entry.key),
                        child: Container(
                          width: 10,
                          height: 4.0,
                          margin: const EdgeInsets.only(
                            right: 6.0,
                            top: 12.0,
                          ),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? primaryColor
                                : const Color(0xffe7e7e7),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              );
            }),
          ),
        ],
      )),
      bottomNavigationBar: QActionBtutton(
        label: 'GetStarted',
        onPressed: () {},
      ),
    );
  }

  @override
  State<Intro1View> createState() => Intro1Controller();
}
