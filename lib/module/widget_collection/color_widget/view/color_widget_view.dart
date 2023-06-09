import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../controller/color_widget_controller.dart';

class ColorWidgetView extends StatefulWidget {
  const ColorWidgetView({Key? key}) : super(key: key);

  Widget build(context, ColorWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ColorWidget"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1.0,
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemCount: controller.colors.length,
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  // mengambil variabel color
                  var item = controller.colors[index];
                  return Container(
                    decoration: BoxDecoration(
                        color: item['color'],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          color: Colors.black,
                          child: Text(
                            '${item['label']}',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ColorWidgetView> createState() => ColorWidgetController();
}
