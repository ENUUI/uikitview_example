import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class IOSView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IOSViewState();
}

class _IOSViewState extends State<IOSView> {
  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform != TargetPlatform.iOS)
      throw FlutterError('iOS Platform only');

    return UiKitView(
      viewType: 'plugin.enuui/uikitview_example',
    );
  }
}
