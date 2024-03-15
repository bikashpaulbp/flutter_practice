import 'package:flutter/material.dart';
import 'package:flutter_practice/app/modules/webview/views/webview_view.dart';
import 'package:flutter_practice/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/dynamic_text_form_field_controller.dart';

class DynamicTextFormFieldView extends GetView<DynamicTextFormFieldController> {
  const DynamicTextFormFieldView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String url =
        "https://github.com/bikashpaulbp/flutter_practice/blob/main/lib/app/modules/dynamic_textFormField/views/dynamic_text_form_field_view.dart";

    List<TextEditingController> controllers = [];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic TextFormField'),
        centerTitle: true,
      ),
      body: StatefulBuilder(
        builder: (context, setState) => SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView.builder(
                    itemCount: controllers.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: controllers[index],
                          decoration: InputDecoration(
                              labelText: "Enter your text",
                              border: OutlineInputBorder()),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        controllers.add(TextEditingController());
                      });
                    },
                    child: Text("Add new field")),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Get.to(WebviewView(
                  url: url,
                ));
              },
              child: Text("View Code")),
        ],
      ),
    );
  }
}
