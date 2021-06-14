/// 搜索模型
class SearchModel {
  String? keyword;
  final List<SearchItem> data;

  SearchModel({this.keyword, required this.data});

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    var dataJson = json['data'] as List;
    List<SearchItem> data =
        dataJson.map((item) => SearchItem.fromJson(item)).toList();
    return SearchModel(data: data);
  }
}

class SearchItem {
  final String word;
  final String? type;
  final String? price;
  final String? star;
  final String? zonename;
  final String? districtname;
  final String url;

  SearchItem({
    required this.word,
    this.type,
    this.price,
    this.star,
    this.zonename,
    this.districtname,
    required this.url,
  });

  factory SearchItem.fromJson(Map<String, dynamic> json) {
    return SearchItem(
      word: json['word'],
      type: json['type'] ?? '',
      price: json['price'] ?? '',
      star: json['star'] ?? '',
      zonename: json['zonename'] ?? '',
      districtname: json['districtname'] ?? '',
      url: json['url'],
    );
  }
}
