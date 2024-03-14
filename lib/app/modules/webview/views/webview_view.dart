import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import 'package:get/get.dart';

import '../controllers/webview_controller.dart';

class WebviewView extends GetView<WebviewController> {
  const WebviewView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double progressIndicatior = 0;
    late InAppWebViewController inAppWebViewController;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Code'),
        centerTitle: true,
      ),
      body: StatefulBuilder(
        builder: (BuildContext context, setState) => Stack(
          children: [
            InAppWebView(
              initialUrlRequest: URLRequest(
                  url: WebUri(
                      "https://github.com/bikashpaulbp/flutter_practice/blob/main/lib/app/modules/home/views/home_view.dart")),
              onWebViewCreated: (InAppWebViewController controller) {
                inAppWebViewController = controller;
              },
              onProgressChanged:
                  (InAppWebViewController controller, int progress) {
                setState(() {
                  progressIndicatior = progress / 100;
                });
              },
            ),
            progressIndicatior < 1
                ? Container(
                    child: LinearProgressIndicator(value: progressIndicatior),
                  )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
