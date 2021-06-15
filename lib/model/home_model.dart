import 'dart:convert';

import 'package:flutter_trip/util/index.dart';

class HomeModel {
  HomeModel({
    required this.config,
    required this.bannerList,
    required this.localNavList,
    required this.gridNav,
    required this.subNavList,
    required this.salesBox,
  });

  factory HomeModel.fromJson(Map<String, dynamic> jsonRes) {
    final List<CommonModel>? bannerList =
        jsonRes['bannerList'] is List ? <CommonModel>[] : null;
    if (bannerList != null) {
      for (final dynamic item in jsonRes['bannerList']!) {
        if (item != null) {
          bannerList
              .add(CommonModel.fromJson(asT<Map<String, dynamic>>(item)!));
        }
      }
    }

    final List<CommonModel>? localNavList =
        jsonRes['localNavList'] is List ? <CommonModel>[] : null;
    if (localNavList != null) {
      for (final dynamic item in jsonRes['localNavList']!) {
        if (item != null) {
          localNavList
              .add(CommonModel.fromJson(asT<Map<String, dynamic>>(item)!));
        }
      }
    }

    final List<CommonModel>? subNavList =
        jsonRes['subNavList'] is List ? <CommonModel>[] : null;
    if (subNavList != null) {
      for (final dynamic item in jsonRes['subNavList']!) {
        if (item != null) {
          subNavList
              .add(CommonModel.fromJson(asT<Map<String, dynamic>>(item)!));
        }
      }
    }

    return HomeModel(
      config: Config.fromJson(asT<Map<String, dynamic>>(jsonRes['config'])!),
      bannerList: bannerList!,
      localNavList: localNavList!,
      gridNav:
          GridNavModel.fromJson(asT<Map<String, dynamic>>(jsonRes['gridNav'])!),
      subNavList: subNavList!,
      salesBox: SalesBoxModel.fromJson(
          asT<Map<String, dynamic>>(jsonRes['salesBox'])!),
    );
  }

  Config config;
  List<CommonModel> bannerList;
  List<CommonModel> localNavList;
  GridNavModel gridNav;
  List<CommonModel> subNavList;
  SalesBoxModel salesBox;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'config': config,
        'bannerList': bannerList,
        'localNavList': localNavList,
        'gridNav': gridNav,
        'subNavList': subNavList,
        'salesBox': salesBox,
      };

  HomeModel clone() => HomeModel.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class Config {
  Config({
    required this.searchUrl,
  });

  factory Config.fromJson(Map<String, dynamic> jsonRes) => Config(
        searchUrl: asT<String>(jsonRes['searchUrl'])!,
      );

  String searchUrl;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'searchUrl': searchUrl,
      };

  Config clone() =>
      Config.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class GridNavModel {
  GridNavModel({
    required this.hotel,
    required this.flight,
    required this.travel,
  });

  factory GridNavModel.fromJson(Map<String, dynamic> jsonRes) => GridNavModel(
        hotel:
            GridNavItem.fromJson(asT<Map<String, dynamic>>(jsonRes['hotel'])!),
        flight:
            GridNavItem.fromJson(asT<Map<String, dynamic>>(jsonRes['flight'])!),
        travel:
            GridNavItem.fromJson(asT<Map<String, dynamic>>(jsonRes['travel'])!),
      );

  GridNavItem hotel;
  GridNavItem flight;
  GridNavItem travel;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'hotel': hotel,
        'flight': flight,
        'travel': travel,
      };

  GridNavModel clone() => GridNavModel.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class CommonModel {
  CommonModel({
    required this.icon,
    required this.url,
    this.title,
    this.hideAppBar,
    this.statusBarColor,
  });

  factory CommonModel.fromJson(Map<String, dynamic> jsonRes) => CommonModel(
        title: jsonRes['title'] ?? '',
        icon: jsonRes['icon'] ?? '',
        url: jsonRes['url'] ?? '',
        hideAppBar: jsonRes['hideAppBar'] ?? false,
        statusBarColor: jsonRes['statusBarColor'] ?? '',
      );

  String icon;
  String url;
  String? title;
  bool? hideAppBar;
  String? statusBarColor;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'icon': icon,
        'url': url,
        'hideAppBar': hideAppBar,
        'statusBarColor': statusBarColor,
      };

  CommonModel clone() => CommonModel.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class GridNavItem {
  GridNavItem({
    required this.startColor,
    required this.endColor,
    required this.mainItem,
    required this.item1,
    required this.item2,
    required this.item3,
    required this.item4,
  });

  factory GridNavItem.fromJson(Map<String, dynamic> jsonRes) => GridNavItem(
        startColor: asT<String>(jsonRes['startColor'])!,
        endColor: asT<String>(jsonRes['endColor'])!,
        mainItem: CommonModel.fromJson(
            asT<Map<String, dynamic>>(jsonRes['mainItem'])!),
        item1:
            CommonModel.fromJson(asT<Map<String, dynamic>>(jsonRes['item1'])!),
        item2:
            CommonModel.fromJson(asT<Map<String, dynamic>>(jsonRes['item2'])!),
        item3:
            CommonModel.fromJson(asT<Map<String, dynamic>>(jsonRes['item3'])!),
        item4:
            CommonModel.fromJson(asT<Map<String, dynamic>>(jsonRes['item4'])!),
      );

  String startColor;
  String endColor;
  CommonModel mainItem;
  CommonModel item1;
  CommonModel item2;
  CommonModel item3;
  CommonModel item4;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'startColor': startColor,
        'endColor': endColor,
        'mainItem': mainItem,
        'item1': item1,
        'item2': item2,
        'item3': item3,
        'item4': item4,
      };

  GridNavItem clone() => GridNavItem.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class SalesBoxModel {
  SalesBoxModel({
    required this.icon,
    required this.moreUrl,
    required this.bigCard1,
    required this.bigCard2,
    required this.smallCard1,
    required this.smallCard2,
    required this.smallCard3,
    required this.smallCard4,
  });

  factory SalesBoxModel.fromJson(Map<String, dynamic> jsonRes) => SalesBoxModel(
        icon: asT<String>(jsonRes['icon'])!,
        moreUrl: asT<String>(jsonRes['moreUrl'])!,
        bigCard1: CommonModel.fromJson(
            asT<Map<String, dynamic>>(jsonRes['bigCard1'])!),
        bigCard2: CommonModel.fromJson(
            asT<Map<String, dynamic>>(jsonRes['bigCard2'])!),
        smallCard1: CommonModel.fromJson(
            asT<Map<String, dynamic>>(jsonRes['smallCard1'])!),
        smallCard2: CommonModel.fromJson(
            asT<Map<String, dynamic>>(jsonRes['smallCard2'])!),
        smallCard3: CommonModel.fromJson(
            asT<Map<String, dynamic>>(jsonRes['smallCard3'])!),
        smallCard4: CommonModel.fromJson(
            asT<Map<String, dynamic>>(jsonRes['smallCard4'])!),
      );

  String icon;
  String moreUrl;
  CommonModel bigCard1;
  CommonModel bigCard2;
  CommonModel smallCard1;
  CommonModel smallCard2;
  CommonModel smallCard3;
  CommonModel smallCard4;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'icon': icon,
        'moreUrl': moreUrl,
        'bigCard1': bigCard1,
        'bigCard2': bigCard2,
        'smallCard1': smallCard1,
        'smallCard2': smallCard2,
        'smallCard3': smallCard3,
        'smallCard4': smallCard4,
      };

  SalesBoxModel clone() => SalesBoxModel.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}
