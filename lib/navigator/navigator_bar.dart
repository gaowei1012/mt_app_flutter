import 'package:flutter/material.dart';

import 'package:xcly_app/pages/home_page.dart';
import 'package:xcly_app/pages/tarvel_page.dart';
import 'package:xcly_app/pages/search_page.dart';
import 'package:xcly_app/pages/my_page.dart';

class NavigatorBarPage extends StatefulWidget {
  @override
  _NavigatorBarPageState createState() => _NavigatorBarPageState();
}

class _NavigatorBarPageState extends State<NavigatorBarPage> {
  final _defultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[HomePage(), SearchPage(), TarvelPage(), MyPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: _defultColor),
            activeIcon: Icon(Icons.home, color: _activeColor),
            title: Text('首页', style: TextStyle(color: _currentIndex !=0 ? _defultColor : _activeColor))
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: _defultColor),
            activeIcon: Icon(Icons.search, color: _activeColor),
            title: Text('搜索', style: TextStyle(color: _currentIndex !=1 ? _defultColor : _activeColor))
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt, color: _defultColor),
            activeIcon: Icon(Icons.camera_alt, color: _activeColor),
            title: Text('旅拍', style: TextStyle(color: _currentIndex !=2 ? _defultColor : _activeColor))
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.my_location, color: _defultColor),
            activeIcon: Icon(Icons.my_location, color: _activeColor),
            title: Text('首页', style: TextStyle(color: _currentIndex !=3 ? _defultColor : _activeColor))
          ),
        ],
      ),
    );
  }
}
