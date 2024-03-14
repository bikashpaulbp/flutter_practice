import 'package:flutter/material.dart';
import 'package:flutter_practice/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width / 1.5,
          color: Color.fromARGB(255, 240, 240, 240),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width / 1.5,
                  color: const Color.fromARGB(255, 127, 127, 127),
                  child: Center(
                    child: Text(
                      "CONTENT",
                      style: TextStyle(
                          color: Color.fromARGB(255, 231, 231, 231),
                          fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {
                      Get.back();
                      Get.toNamed(Routes.DYNAMIC_TEXT_FORM_FIELD);
                    },
                    child: Text(
                      "Dynamic TextFormField",
                      style: TextStyle(
                          color: Color.fromARGB(255, 165, 165, 165),
                          fontSize: 20),
                    ))
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('Flutter Practice'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width / 2,
                  color: Colors.red,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 15,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 6,
                  width: MediaQuery.of(context).size.width / 4,
                  color: Color.fromARGB(255, 38, 245, 6),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment(1.5, 1.5),
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width / 2,
                      color: const Color.fromARGB(255, 54, 86, 244),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 8,
                      width: MediaQuery.of(context).size.width / 4,
                      color: Color.fromARGB(255, 225, 54, 244),
                    ),
                    Positioned(
                      bottom: 40,
                      left: -40,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 8,
                        width: MediaQuery.of(context).size.width / 4,
                        child: CircleAvatar(
                          backgroundColor: Colors.amber,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Text(
                "Practice code with different page",
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
            )
          ],
        ),
      ),
      bottomSheet: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.WEBVIEW);
              },
              child: Text("View Code")),
        ],
      ),
    );
  }
}
