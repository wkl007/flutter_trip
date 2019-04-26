import 'package:flutter/material.dart';
import 'package:flutter_trip/model/common_model.dart';
import 'package:flutter_trip/widget/webview.dart';

class SubNav extends StatelessWidget {
  final List<CommonModel> subNavList;

  const SubNav({
    Key key,
    @required this.subNavList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: EdgeInsets.all(7),
        child: _items(context),
      ),
    );
  }

  Widget _items(BuildContext context) {
    if (subNavList == null) return null;
    List<Widget> items = [];
    subNavList.forEach((model) {
      items.add(_item(context, model));
    });
    //计算出第一行显示的数量
    int separate = (subNavList.length / 2 + 0.5).toInt();
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: items.sublist(0, separate),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: items.sublist(separate, subNavList.length),
          ),
        )
      ],
    );
  }

  Widget _item(BuildContext context, CommonModel model) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => WebView(
                        url: model.url,
                        statusBarColor: model.statusBarColor,
                        hideAppBar: model.hideAppBar,
                        title: model.title,
                      )));
        },
        child: Column(
          children: <Widget>[
            Image.network(
              model.icon,
              width: 18,
              height: 18,
            ),
            Padding(
              padding: EdgeInsets.only(top: 3),
              child: Text(model.title, style: TextStyle(fontSize: 12)),
            )
          ],
        ),
      ),
    );
  }
}
