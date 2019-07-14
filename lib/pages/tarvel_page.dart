import 'package:flutter/material.dart';

class TarvelPage extends StatefulWidget {
  @override
  _TarvelPageState createState() => _TarvelPageState();
}

class _TarvelPageState extends State<TarvelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('旅拍'),
      ),
      body: Container(
        child: Text('旅拍'),
      ),
    );
  }
}