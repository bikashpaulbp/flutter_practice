import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dynamic_text_form_field_controller.dart';

class DynamicTextFormFieldView extends GetView<DynamicTextFormFieldController> {
  const DynamicTextFormFieldView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DynamicTextFormFieldView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DynamicTextFormFieldView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
