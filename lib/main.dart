import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import './navigator/tab_navigator.dart';

void main() => runApp(TestSharedPreferences());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabNavigator(),
    );
  }
}

class TestHttp extends StatefulWidget {
  @override
  _TestHttpState createState() => _TestHttpState();
}

class _TestHttpState extends State<TestHttp> {
  String showResult = '';

  Future<CommonModel> fetchPost() async {
    final response = await http
        .get('http://www.devio.org/io/flutter_app/json/test_common_model.json');
    final result = json.decode(response.body);
    return new CommonModel.fromJson(result);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('http'),
          ),
          body: Column(
            children: <Widget>[
              InkWell(
                onTap: () {
                  fetchPost().then((CommonModel value) {
                    print(value);

                    setState(() {
                      showResult =
                          '请求结果：\nhideAppBar：${value.hideAppBar}\nicon：${value.icon}';
                    });
                  });
                },
                child: Text(
                  '点我',
                  style: TextStyle(fontSize: 26),
                ),
              ),
              Text(showResult)
            ],
          )),
    );
  }
}

class TestFuture extends StatefulWidget {
  @override
  _TestFutureState createState() => _TestFutureState();
}

class _TestFutureState extends State<TestFuture> {
  String showResult = '';

  Future<CommonModel> fetchPost() async {
    final response = await http
        .get('http://www.devio.org/io/flutter_app/json/test_common_model.json');
    Utf8Decoder utf8decoder = Utf8Decoder(); //解决中文乱码
    final result = json.decode(utf8decoder.convert(response.bodyBytes));
    return new CommonModel.fromJson(result);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Future与FutureBuilder实用技巧')),
        body: FutureBuilder<CommonModel>(
            future: fetchPost(),
            builder:
                (BuildContext context, AsyncSnapshot<CommonModel> snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return Text('Input a url to start');
                case ConnectionState.waiting:
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                case ConnectionState.active:
                  return Text('');
                case ConnectionState.done:
                  if (snapshot.hasError) {
                    return Text(
                      '${snapshot.error}',
                      style: TextStyle(color: Colors.red),
                    );
                  } else {
                    return Column(children: <Widget>[
                      Text('icon:${snapshot.data.icon}'),
                      Text('statusBarColor:${snapshot.data.statusBarColor}'),
                      Text('title:${snapshot.data.title}'),
                      Text('url:${snapshot.data.url}')
                    ]);
                  }
              }
            }),
      ),
    );
  }
}

class TestSharedPreferences extends StatefulWidget {
  @override
  _TestSharedPreferencesState createState() => _TestSharedPreferencesState();
}

class _TestSharedPreferencesState extends State<TestSharedPreferences> {
  String countString = '';
  String localCount = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('SharePreferences')),
        body: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                onPressed: _incrementCounter,
                child: Text('Increment Counter'),
              ),
              RaisedButton(
                onPressed: _getCounter,
                child: Text('Get Counter'),
              ),
              Text(countString, style: TextStyle(fontSize: 20)),
              Text(localCount, style: TextStyle(fontSize: 20))
            ],
          ),
        ),
      ),
    );
  }

  _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      countString = countString + ' 1';
    });
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    await prefs.setInt('counter', counter);
  }

  _getCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      localCount = prefs.getInt('counter').toString();
    });
  }
}

class CommonModel {
  final String icon;
  final String title;
  final String url;
  final String statusBarColor;
  final bool hideAppBar;

  CommonModel(
      {this.icon, this.title, this.url, this.statusBarColor, this.hideAppBar});

  factory CommonModel.fromJson(Map<String, dynamic> json) => CommonModel(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
      statusBarColor: json['statusBarColor'],
      hideAppBar: json['hideAppBar']);
}
