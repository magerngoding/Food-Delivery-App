import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class ModuleListWidgetController extends State<ModuleListWidgetView>
    implements MvcController {
  static late ModuleListWidgetController instance;
  late ModuleListWidgetView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List moduleList = [
    {
      "label": "IntroView",
      "view": Intro1View(),
    },
    {
      "label": "LoginView1",
      "view": Login1View(),
    },
    {
      "label": "ForgotPasswordView",
      "view": ForgotPasswordView(),
    },
    {
      "label": "Dashboard1View",
      "view": Dashboard1View(),
    },
    {
      "label": "Dashboard2View",
      "view": Dashboard2View(),
    },
    {
      "label": "Dashboard3View",
      "view": Dashboard3View(),
    },
    {
      "label": "Dashboard4View",
      "view": Dashboard4View(),
    },
    {
      "label": "RestaurantList1View",
      "view": RestaurantList1View(),
    },
    {
      "label": "RestaurantList2View",
      "view": RestaurantList2View(),
    },
    {
      "label": "ProductDetail1View",
      "view": ProductDetail1View(),
    },
    {
      "label": "ProductDetail2View",
      "view": ProductDetail2View(),
    },
    {
      "label": "ProductDetail3View",
      "view": ProductDetail3View(),
    },
    {
      "label": "OrderDetail1View",
      "view": OrderDetail1View(),
    },
    {
      "label": "AddPaymentMethod1View",
      "view": AddPaymentMethod1View(),
    },
    {
      "label": "Filter1View",
      "view": Filter1View(),
    },
    {
      "label": "ProductList1View",
      "view": ProductList1View(),
    },
    {
      "label": "ProductList2View",
      "view": ProductList2View(),
    },
    {
      "label": "CategoryList1View",
      "view": CategoryList1View(),
    },
    {
      "label": "SearchProduct1View",
      "view": SearchProduct1View(),
    },
    {
      "label": "SearchResult1View",
      "view": SearchResult1View(),
    },
    {
      "label": "SearchResult2View",
      "view": SearchResult2View(),
    },
    {
      "label": "OrderList1View",
      "view": OrderList1View(),
    },
    {
      "label": "OrderDetail1View",
      "view": OrderDetail1View(),
    },
    {
      "label": "DialogView",
      "view": DialogView(),
    },
    {
      "label": "AccountSetting1View",
      "view": AccountSetting1View(),
    },
    {
      "label": "ProfileSetting1View",
      "view": ProfileSetting1View(),
    },
    {
      "label": "ChangePassword1View",
      "view": ChangePassword1View(),
    },
    {
      "label": "CardList1View",
      "view": CardList1View(),
    },
    {
      "label": "Locations1View",
      "view": Locations1View(),
    },
    {
      "label": "AddSocialAccounts1View",
      "view": AddSocialAccounts1View(),
    },
    {
      "label": "ReferToFriends1View",
      "view": ReferToFriends1View(),
    },
  ];
}
