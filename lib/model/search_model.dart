import 'dart:convert';

import 'package:flutter_trip/util/index.dart';

class SearchModel {
  SearchModel({
    required this.keyword,
    required this.data,
  });

  factory SearchModel.fromJson(Map<String, dynamic> jsonRes) {
    final List<SearchItem>? data =
        jsonRes['data'] is List ? <SearchItem>[] : null;
    if (data != null) {
      for (final dynamic item in jsonRes['data']!) {
        if (item != null) {
          data.add(SearchItem.fromJson(asT<Map<String, dynamic>>(item)!));
        }
      }
    }

    return SearchModel(
      keyword: jsonRes['keyword'] ?? '',
      data: data!,
    );
  }

  String keyword;
  List<SearchItem> data;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'keyword': keyword,
        'data': data,
      };

  SearchModel clone() => SearchModel.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}

class SearchItem {
  SearchItem({
    required this.word,
    required this.url,
    this.type,
    this.price,
    this.star,
    this.zonename,
    this.districtname,
  });

  factory SearchItem.fromJson(Map<String, dynamic> jsonRes) => SearchItem(
        word: asT<String>(jsonRes['word'])!,
        url: asT<String>(jsonRes['url'])!,
        type: asT<String>(jsonRes['type']),
        price: asT<String>(jsonRes['price']),
        star: asT<String>(jsonRes['star']),
        zonename: asT<String>(jsonRes['zonename']),
        districtname: asT<String>(jsonRes['districtname']),
      );

  String word;
  String? type;
  String? price;
  String? star;
  String? zonename;
  String? districtname;
  String url;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'word': word,
        'type': type,
        'price': price,
        'star': star,
        'zonename': zonename,
        'districtname': districtname,
        'url': url,
      };

  SearchItem clone() => SearchItem.fromJson(
      asT<Map<String, dynamic>>(jsonDecode(jsonEncode(this)))!);
}
