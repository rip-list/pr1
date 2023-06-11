import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class WebViewWidget extends StatefulWidget {
  const WebViewWidget({super.key});

  @override
  WebViewWidgetState createState() => WebViewWidgetState();
}

class WebViewWidgetState extends State<WebViewWidget> {
  InAppWebViewController? _webViewController;
  String _url = 'https://www.donationalerts.com/widget/goal/6669967?token=hoOaX6Xz6zCJQXXDNgKN'; // Укажите URL вашей веб-страницы

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Donat'),
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: Uri.parse(_url)),
        initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
            // Настройки WebView
            javaScriptEnabled: true,
          ),
        ),
        onWebViewCreated: (controller) {
          _webViewController = controller;
        },
        onLoadStart: (controller, url) {
          setState(() {
            _url = url.toString();
          });
        },
      ),
    );
  }
}





