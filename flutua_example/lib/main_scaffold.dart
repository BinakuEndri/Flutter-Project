import 'package:flutter/material.dart';
import 'package:flutua_example/main_drawer.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MainScaffold extends StatelessWidget {
  final String title;
  final String url;

  MainScaffold(this.title,this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: MainDrawer(),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
        
      ),
    );
  }
}
