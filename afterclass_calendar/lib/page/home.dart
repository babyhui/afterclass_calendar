import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: list2(),
    );
  }
}

class list2 extends StatefulWidget {
  @override
  _list2State createState() => _list2State();
}

class _list2State extends State<list2> {
  @override
  Widget build(BuildContext context) {
    list.add(aasd);
    list.add(aasd);
    return Container(
      child: ListView(
        children: list,
      ),
    );
  }
}

var aasd = ListTile(
  title: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        children: <Widget>[
          FlatButton(
            child: Image.asset(
              'images/unnamed.jpg',
              width: 130,
            ),
            onPressed: () {},
          ),
          Text("data")
        ],
      ),
      Column(
        children: <Widget>[
          FlatButton(
              child: Image.asset(
            'images/unnamed.jpg',
            width: 130,
          )),
          Text("data")
        ],
      ),
    ],
  ),
);
List<Widget> list = <Widget>[];
