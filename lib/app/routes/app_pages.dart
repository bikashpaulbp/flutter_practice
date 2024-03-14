import 'package:get/get.dart';

import '../modules/dynamic_textFormField/bindings/dynamic_text_form_field_binding.dart';
import '../modules/dynamic_textFormField/views/dynamic_text_form_field_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

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
  ];
}
