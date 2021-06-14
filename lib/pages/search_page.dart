import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  final bool? hideLeft;
  final String? searchUrl;
  final String? keyword;
  final String? hint;

  const SearchPage({
    Key? key,
    this.hideLeft,
    this.searchUrl,
    this.keyword,
    this.hint,
  }) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
