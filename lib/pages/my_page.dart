import 'package:flutter/material.dart';
import 'package:flutter_trip/widgets/webview.dart';

/// 个人中心页面
class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> with AutomaticKeepAliveClientMixin {
  // 缓存页面
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Webview(
        initialUrl: 'https://m.ctrip.com/webapp/myctrip/',
        hideAppBar: true,
        backForbid: true,
        statusBarColor: '4c5bca',
      ),
    );
  }
}
