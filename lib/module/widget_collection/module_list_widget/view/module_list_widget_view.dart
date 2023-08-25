import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import 'package:hyper_ui/module/widget_collection/module_list_widget/controller/module_list_widget_controller.dart';

class ModuleListWidgetView extends StatefulWidget {
  const ModuleListWidgetView({Key? key}) : super(key: key);

  Widget build(context, ModuleListWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ModuleListWidget"),
        actions: [
          CircleAvatar(
            backgroundColor: primaryColor.withOpacity(0.2),
            child: Text(
              "${controller.moduleList.length}",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: primaryColor,
              ),
            ),
          ),
        ],
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.0,
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: controller.moduleList.length,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          var item = controller.moduleList[index];
          return InkWell(
            onTap: () => Get.to(
              item['view'],
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item['label'],
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  State<ModuleListWidgetView> createState() => ModuleListWidgetController();
}
