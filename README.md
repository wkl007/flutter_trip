# flutter_trip

[慕课网仿携程网App](https://coding.imooc.com/class/321.html)，基于Flutter支持Android与iOS平台。

## 目录

- [下载](#下载)
- [真机预览](#真机预览)
- [功能与特性](#功能与特性)
- [插件使用](#插件使用)
- [运行调试](#运行调试)
- [ToDo](#ToDo)

## 下载

![Flutter_Trip](<https://raw.githubusercontent.com/wkl007/flutter_trip/master/screenshot/flutter_trip_two_code.png>)

## 真机预览

![Flutter_Trip](https://raw.githubusercontent.com/wkl007/flutter_trip/master/screenshot/flutter_trip_preview.png)

## 功能与特性

- 实现首页、搜索、旅拍、我的四大模块；
- 实现网络图片本地缓存；
- 旅拍模块实现瀑布流布局；
- 接口数据抓取携程H5端；
- 集成友盟数据统计；

## 插件使用

- [azlistview ^0.1.2](https://pub.flutter-io.cn/packages/azlistview)
- [cached_network_image ^1.1.1](https://pub.flutter-io.cn/packages/cached_network_image)
- [dio ^3.0.3](https://pub.flutter-io.cn/packages/dio)
- [flutter_swiper ^1.1.6](https://pub.flutter-io.cn/packages/flutter_swiper)
- [flutter_staggered_grid_view ^0.3.0](https://pub.flutter-io.cn/packages/flutter_staggered_grid_view)
- [flutter_splash_screen ^0.1.0](https://pub.flutter-io.cn/packages/flutter_splash_screen)
- [flutter_webview_plugin ^0.3.8](https://pub.flutter-io.cn/packages/flutter_webview_plugin)

## 运行调试

1. 准备Flutter环境,可参考: [getting-started](<https://flutter-io.cn/docs/get-started/install>)。
2. Clone [flutter_trip](https://github.com/wkl007/flutter_trip.git) ,然后终端进入项目根目录。
3. 终端运行 `flutter packages get`。
4. 然后运行 `flutter run`。

## ToDo

1. 添加定位功能。
2. 用官方 [webview_flutter](https://pub.flutter-io.cn/packages/webview_flutter) 插件替换 [flutter_webview_plugin](https://pub.flutter-io.cn/packages/flutter_webview_plugin)

