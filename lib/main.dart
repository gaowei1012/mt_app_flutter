import 'package:flutter/material.dart';

import 'package:xcly_app/navigator/navigator_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '携程旅游',
      home: NavigatorBarPage(),
    );
  }
}