import 'package:flutter/material.dart';
import 'package:flutter_practice/app/modules/webview/views/webview_view.dart';

import 'package:get/get.dart';

import '../controllers/page_view_controller.dart';

class PageViewView extends GetView<PageViewController> {
  const PageViewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String url =
        "https://github.com/bikashpaulbp/flutter_practice/blob/main/lib/app/modules/page_view/views/page_view_view.dart";

    PageController controller = PageController(initialPage: 0);

    return StatefulBuilder(
      builder: (BuildContext context, setState) => Scaffold(
        appBar: AppBar(
          title: const Text('Page View'),
          centerTitle: true,
        ),
        body: SafeArea(
          child: PageView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            children: [Page1(), Page2(), Page3()],
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
                child: const Text("View Code")),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 7, 181, 255),
      child: Center(
          child: Text(
        "Page 01",
        style: TextStyle(color: Colors.white, fontSize: 20),
      )),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Center(
          child: Text(
        "Page 02",
        style: TextStyle(color: Colors.white, fontSize: 20),
      )),
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 7, 197),
      child: Center(
          child: Text(
        "Page 03",
        style: TextStyle(color: Colors.white, fontSize: 20),
      )),
    );
  }
}
