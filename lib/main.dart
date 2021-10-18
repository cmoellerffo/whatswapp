import 'package:flutter/material.dart';
import 'package:whatswapp/src/whatswapp_browser.dart';

void main() {
  runApp(WhatsWapp());
}

/// Main Widget for WhatsWapp
class WhatsWapp extends StatelessWidget {
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
