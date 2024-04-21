part of '../web_view.dart';

base mixin WebViewMixin on State<WebView> {
  late final WebViewController _controller;

  /// Getter
  WebViewController get controller => _controller;

  @override
  void initState() {
    super.initState();
    // #docregion platform_features
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..setBackgroundColor(const Color(0x00000000))
      ..clearCache()
      ..loadRequest(Uri.parse('https://flutter.dev/'));

    _controller = controller;
  }
}
