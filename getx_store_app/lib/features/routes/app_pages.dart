import 'package:get/get.dart';

import '../../bottom_navbar.dart';
import '../product/views/product_detail_view.dart';



part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.PRODUCT_LIST;

  static final routes = [
    GetPage(name: Routes.PRODUCT_LIST, page: () => NavigationMenu()),
    GetPage(name: Routes.PRODUCT_DETAIL, page: () => ProductDetailView()),
  ];
}
