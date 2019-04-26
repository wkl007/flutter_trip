import 'package:flutter/material.dart';
import 'package:flutter_trip/pages/home_page.dart';
import 'package:flutter_trip/pages/my_page.dart';
import 'package:flutter_trip/pages/search_page.dart';
import 'package:flutter_trip/pages/travel_page.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  var _controller = PageController(initialPage: 0);
  int _currentIndex = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _controller,
        children: <Widget>[
          HomePage(),
          SearchPage(
            hideLeft: true,
          ),
          TravelPage(),
          MyPage(),
        ],
        /*onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },*/
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 12,
          unselectedFontSize: 12,
          currentIndex: _currentIndex,
          onTap: (index) {
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            _bottomNavigationBarItem(Icons.home, '首页', 0),
            _bottomNavigationBarItem(Icons.search, '搜索', 1),
            _bottomNavigationBarItem(Icons.camera_alt, '旅拍', 2),
            _bottomNavigationBarItem(Icons.account_circle, '我的', 3),
          ]),
    );
  }

  //底部导航item
  BottomNavigationBarItem _bottomNavigationBarItem(
      IconData icon, String title, int index) {
    return BottomNavigationBarItem(
        icon: Icon(
          icon,
          color: _defaultColor,
        ),
        activeIcon: Icon(
          icon,
          color: _activeColor,
        ),
        title: Text(
          title,
          style: TextStyle(
              color: _currentIndex != index ? _defaultColor : _activeColor),
        ));
  }
}
