import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dynamic_text_form_field_controller.dart';

class DynamicTextFormFieldView extends GetView<DynamicTextFormFieldController> {
  const DynamicTextFormFieldView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
      
    );
  }
}
