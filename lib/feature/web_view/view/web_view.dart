import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

part 'mixin/web_view_mixin.dart';

@RoutePage()

/// WebView
final class WebView extends StatefulWidget {
  /// Constructor
  const WebView({super.key});

  @override
  State<WebView> createState() => _WebViewState();
}

final class _WebViewState extends State<WebView> with WebViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
