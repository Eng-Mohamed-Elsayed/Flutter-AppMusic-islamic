import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'app_bar.dart';
import 'dart:io' show Platform;

class AppWebView extends StatefulWidget {
  final String title;
  final String url;

  const AppWebView({Key? key, required this.title, required this.url})
      : super(key: key);

  @override
  _AppWebViewState createState() => _AppWebViewState();
}

class _AppWebViewState extends State<AppWebView> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(
        title: widget.title,
      ),
      body: WebView(
        initialUrl: widget.url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
