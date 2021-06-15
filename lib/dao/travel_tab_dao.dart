import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_trip/model/travel_tab_model.dart';

const TRAVEL_TAB_URL =
    'https://apk-1256738511.file.myqcloud.com/FlutterTrip/data/travel_page.json';

/// 旅拍类别接口
class TravelTabDao {
  static Future<TravelTabModel> fetch() async {
    Response response = await Dio().get(TRAVEL_TAB_URL);
    if (response.statusCode == 200) {
      return TravelTabModel.fromJson(response.data);
    } else {
      throw Exception('Failed to load travel_page.json');
    }
  }
}
