import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: <Widget>[
                Row(children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      "images/圖片顯示中.jpg",
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Column(children: <Widget>[
                      Text("姓名: "),
                      Text("系級: "),
                    ]),
                  ),
                ]),
                ListTile(
                  leading: Icon(Icons.check_box, color: Colors.blue),
                  title: Text("社團"),
                  trailing: Icon(Icons.keyboard_arrow_down),
                ),
                ListTile(
                  leading: Icon(Icons.local_activity, color: Colors.yellow),
                  title: Text("活動"),
                  trailing: Icon(Icons.keyboard_arrow_down),
                ),
                ListTile(
                  leading: Icon(Icons.favorite, color: Colors.red),
                  title: Text("追蹤中"),
                  trailing: Icon(Icons.keyboard_arrow_down),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("設定"),
                  trailing: Icon(Icons.keyboard_arrow_down),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
