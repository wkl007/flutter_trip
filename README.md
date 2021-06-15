# flutter_trip

[慕课网仿携程网App](https://coding.imooc.com/class/321.html) ，基于`Flutter`支持`Android`与`iOS`平台。

## 目录

- [下载](#下载)
- [真机预览](#真机预览)
- [功能与特性](#功能与特性)
- [插件使用](#插件使用)
- [运行调试](#运行调试)

## 下载

![Flutter_Trip](https://apk-1256738511.cos.ap-chengdu.myqcloud.com/FlutterTrip/images/flutter_trip_qr_code.png)

## 真机预览

![Flutter_Trip](https://apk-1256738511.cos.ap-chengdu.myqcloud.com/FlutterTrip/images/flutter_trip_preview.png)

## 功能与特性

- 实现首页、搜索、旅拍、我的四大模块；
- 实现网络图片本地缓存；
- 旅拍模块实现瀑布流布局；
- 接口数据抓取携程`H5`端；
- 集成友盟数据统计；

## 插件使用

- [azlistview ^2.0.0-nullsafety.0](https://pub.flutter-io.cn/packages/azlistview)
- [cached_network_image ^3.0.0](https://pub.flutter-io.cn/packages/cached_network_image)
- [dio ^4.0.0](https://pub.flutter-io.cn/packages/dio)
- [flutter_card_swipper ^0.4.0](https://pub.flutter-io.cn/packages/flutter_card_swipper)
- [flutter_staggered_grid_view ^0.4.0](https://pub.flutter-io.cn/packages/flutter_staggered_grid_view)
- [fluttertoast ^8.0.7](https://pub.flutter-io.cn/packages/fluttertoast)
- [webview_flutter ^2.0.8](https://pub.flutter-io.cn/packages/webview_flutter)
- [umeng_common_sdk ^1.1.3](https://pub.flutter-io.cn/packages/umeng_common_sdk)

## 运行调试

1. 准备Flutter环境,可参考: [getting-started](<https://flutter-io.cn/docs/get-started/install>)。
2. Clone [flutter_trip](https://github.com/wkl007/flutter_trip.git) ,然后终端进入项目根目录。
3. 终端运行 `flutter packages get`。
4. 然后运行 `flutter run`。
5. 打包运行 `flutter build apk`。
