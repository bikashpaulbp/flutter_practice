import 'package:flutter/material.dart';
import 'package:flutter_practice/app/modules/webview/views/webview_view.dart';

import 'package:get/get.dart';

import '../controllers/bottom_navigation_bar_controller.dart';

class BottomNavigationBarView extends GetView<BottomNavigationBarController> {
  const BottomNavigationBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String url =
        "https://github.com/bikashpaulbp/flutter_practice/blob/main/lib/app/modules/bottom_navigation_bar/views/bottom_navigation_bar_view.dart";

    var currentIndex = 0;

    List pages = [
      Page1(),
      Page2(),
      Page3(),
      Page4(),
    ];

    return StatefulBuilder(
      builder: (BuildContext context, setState) => Scaffold(
        appBar: AppBar(
          title: const Text('Bottom Navigation Bar'),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 255, 52, 25),
                icon: Icon(Icons.home),
                label: "Page 1"),
            BottomNavigationBarItem(icon: Icon(Icons.login), label: "Page 2"),
            BottomNavigationBarItem(
                icon: Icon(Icons.logo_dev), label: "Page 3"),
            BottomNavigationBarItem(icon: Icon(Icons.face), label: "Page 4"),
          ],
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
        body: pages[currentIndex],
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
        ),
      ),
    );
  }
}

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 32, 255, 7),
      child: Center(
        child: Text(
          "Page 04",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
