import 'package:get/get.dart';

import '../modules/bottom_navigation_bar/bindings/bottom_navigation_bar_binding.dart';
import '../modules/bottom_navigation_bar/views/bottom_navigation_bar_view.dart';
import '../modules/dynamic_textFormField/bindings/dynamic_text_form_field_binding.dart';
import '../modules/dynamic_textFormField/views/dynamic_text_form_field_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/page_view/bindings/page_view_binding.dart';
import '../modules/page_view/views/page_view_view.dart';
import '../modules/webview/bindings/webview_binding.dart';
import '../modules/webview/views/webview_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DYNAMIC_TEXT_FORM_FIELD,
      page: () => const DynamicTextFormFieldView(),
      binding: DynamicTextFormFieldBinding(),
    ),
    GetPage(
      name: _Paths.WEBVIEW,
      page: () => WebviewView(),
      binding: WebviewBinding(),
    ),
    GetPage(
      name: _Paths.PAGE_VIEW,
      page: () => const PageViewView(),
      binding: PageViewBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVIGATION_BAR,
      page: () => const BottomNavigationBarView(),
      binding: BottomNavigationBarBinding(),
    ),
  ];
}
