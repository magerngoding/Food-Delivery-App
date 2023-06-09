import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../../../../shared/widget/typography/heading.dart';
import '../controller/typography_widget_controller.dart';

class TypographyWidgetView extends StatefulWidget {
  const TypographyWidgetView({Key? key}) : super(key: key);

  Widget build(context, TypographyWidgetController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("TypographyWidget"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              //#TEMPLATE h1
              H1(title: 'Heading 1'),
              //#END
              //#TEMPLATE h2
              H2(title: 'Heading 2'),
              //#END
              //#TEMPLATE h3
              H3(
                  title: 'Heading 3',
                  subtitle: '123',
                  onPressed: () {
                    print('h3');
                  }),
              //#END
              //#TEMPLATE h4
              H4(title: 'Heading 3'),
              //#END
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<TypographyWidgetView> createState() => TypographyWidgetController();
}
