import 'dart:convert';

import 'package:flutter_trip/util/index.dart';

/// 旅拍类别模型
class TravelTabModel {
  String url;
  Map params;
  List<TravelTab> tabs;

  TravelTabModel({
    required this.url,
    required this.params,
    required this.tabs,
  });

  factory TravelTabModel.fromJson(Map<String, dynamic> jsonRes) {
    final List<TravelTab>? tabs =
        jsonRes['tabs'] is List ? <TravelTab>[] : null;
    if (tabs != null) {
      for (final dynamic item in jsonRes['tabs']!) {
        if (item != null) {
          tabs.add(TravelTab.fromJson(asT<Map<String, dynamic>>(item)!));
        }
      }
    }
    return TravelTabModel(
      url: asT<String>(jsonRes['url'])!,
      params: asT<Map>(jsonRes['params'])!,
      tabs: tabs!,
    );
  }

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'url': url,
        'params': params,
        'tabs': tabs,
      };

  TravelTabModel clone() => TravelTabModel.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class Params {
  int districtId;
  String groupChannelCode;
  Object? type;
  double lat;
  double lon;
  int locatedDistrictId;
  PagePara pagePara;
  int imageCutType;
  Head head;
  String contentType;

  Params({
    required this.districtId,
    required this.groupChannelCode,
    this.type,
    required this.lat,
    required this.lon,
    required this.locatedDistrictId,
    required this.pagePara,
    required this.imageCutType,
    required this.head,
    required this.contentType,
  });

  factory Params.fromJson(Map<String, dynamic> jsonRes) => Params(
        districtId: asT<int>(jsonRes['districtId'])!,
        groupChannelCode: asT<String>(jsonRes['groupChannelCode'])!,
        type: asT<Object?>(jsonRes['type']),
        lat: asT<double>(jsonRes['lat'])!,
        lon: asT<double>(jsonRes['lon'])!,
        locatedDistrictId: asT<int>(jsonRes['locatedDistrictId'])!,
        pagePara:
            PagePara.fromJson(asT<Map<String, dynamic>>(jsonRes['pagePara'])!),
        imageCutType: asT<int>(jsonRes['imageCutType'])!,
        head: Head.fromJson(asT<Map<String, dynamic>>(jsonRes['head'])!),
        contentType: asT<String>(jsonRes['contentType'])!,
      );

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'districtId': districtId,
        'groupChannelCode': groupChannelCode,
        'type': type,
        'lat': lat,
        'lon': lon,
        'locatedDistrictId': locatedDistrictId,
        'pagePara': pagePara,
        'imageCutType': imageCutType,
        'head': head,
        'contentType': contentType,
      };

  Params clone() =>
      Params.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class PagePara {
  int pageIndex;
  int pageSize;
  int sortType;
  int sortDirection;

  PagePara({
    required this.pageIndex,
    required this.pageSize,
    required this.sortType,
    required this.sortDirection,
  });

  factory PagePara.fromJson(Map<String, dynamic> jsonRes) => PagePara(
        pageIndex: asT<int>(jsonRes['pageIndex'])!,
        pageSize: asT<int>(jsonRes['pageSize'])!,
        sortType: asT<int>(jsonRes['sortType'])!,
        sortDirection: asT<int>(jsonRes['sortDirection'])!,
      );

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'pageIndex': pageIndex,
        'pageSize': pageSize,
        'sortType': sortType,
        'sortDirection': sortDirection,
      };

  PagePara clone() => PagePara.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class Head {
  String cid;
  String ctok;
  String cver;
  String lang;
  String sid;
  String syscode;
  Object? auth;
  List<Extension> extension;

  Head({
    required this.cid,
    required this.ctok,
    required this.cver,
    required this.lang,
    required this.sid,
    required this.syscode,
    this.auth,
    required this.extension,
  });

  factory Head.fromJson(Map<String, dynamic> jsonRes) {
    final List<Extension>? extension =
        jsonRes['extension'] is List ? <Extension>[] : null;
    if (extension != null) {
      for (final dynamic item in jsonRes['extension']!) {
        if (item != null) {
          extension.add(Extension.fromJson(asT<Map<String, dynamic>>(item)!));
        }
      }
    }
    return Head(
      cid: asT<String>(jsonRes['cid'])!,
      ctok: asT<String>(jsonRes['ctok'])!,
      cver: asT<String>(jsonRes['cver'])!,
      lang: asT<String>(jsonRes['lang'])!,
      sid: asT<String>(jsonRes['sid'])!,
      syscode: asT<String>(jsonRes['syscode'])!,
      auth: asT<Object?>(jsonRes['auth']),
      extension: extension!,
    );
  }

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'cid': cid,
        'ctok': ctok,
        'cver': cver,
        'lang': lang,
        'sid': sid,
        'syscode': syscode,
        'auth': auth,
        'extension': extension,
      };

  Head clone() =>
      Head.fromJson(asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class Extension {
  String name;
  String value;

  Extension({
    required this.name,
    required this.value,
  });

  factory Extension.fromJson(Map<String, dynamic> jsonRes) => Extension(
        name: asT<String>(jsonRes['name'])!,
        value: asT<String>(jsonRes['value'])!,
      );

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'value': value,
      };

  Extension clone() => Extension.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class TravelTab {
  String labelName;
  String groupChannelCode;
  int type;

  TravelTab({
    required this.labelName,
    required this.groupChannelCode,
    required this.type,
  });

  factory TravelTab.fromJson(Map<String, dynamic> jsonRes) => TravelTab(
        labelName: asT<String>(jsonRes['labelName'])!,
        groupChannelCode: asT<String>(jsonRes['groupChannelCode'])!,
        type: asT<int>(jsonRes['type'])!,
      );

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'labelName': labelName,
        'groupChannelCode': groupChannelCode,
        'type': type,
      };

  TravelTab clone() => TravelTab.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}
