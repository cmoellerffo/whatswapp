import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(WhatsWapp());
}

class WhatsWapp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsWapp',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: WhatsWappBrowser(),
    );
  }
}

class WhatsWappBrowser extends StatefulWidget {
  WhatsWappBrowser({Key? key}) : super(key: key);

  @override
  _WhatsWebBrowserState createState() => _WhatsWebBrowserState();
}

class _WhatsWebBrowserState extends State<WhatsWappBrowser> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text('WhatsWapp'),
      ),
      body: WebView(
        initialUrl: 'https://web.whatsapp.com',
        allowsInlineMediaPlayback: true,
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController controller) {
          // Do nothing for now
        },
        userAgent: "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.81 Safari/537.36",
      )
    );
  }
}
