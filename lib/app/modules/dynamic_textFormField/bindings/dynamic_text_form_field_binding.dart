import 'package:get/get.dart';

import '../controllers/dynamic_text_form_field_controller.dart';

class DynamicTextFormFieldBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DynamicTextFormFieldController>(
      () => DynamicTextFormFieldController(),
    );
  }
}
