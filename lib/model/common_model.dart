/// 公共模型
class CommonModel {
  final String icon;
  final String title;
  final String url;
  final String? statusBarColor;
  final bool? hideAppBar;

  CommonModel({
    required this.icon,
    required this.title,
    required this.url,
    this.statusBarColor,
    this.hideAppBar,
  });

  factory CommonModel.fromJson(Map<String, dynamic> json) {
    return CommonModel(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
      statusBarColor: json['statusBarColor'],
      hideAppBar: json['hideAppBar'],
    );
  }
}
