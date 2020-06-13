import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            child: Column(children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      "images/圖片顯示中.jpg",
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("姓名:  XXX"),
                          Text("系級:  資訊工程學系 2年級"),
                        ]),
                  ),
                ]),
              ),
              ExpansionTile(
                leading: Icon(Icons.check_box, color: Colors.blue),
                title: Text("社團"),
                children: <Widget>[
                  ListTile(
                    title: Text("逢甲大學 iOS Club 志工隊"),
                  ),
                  ListTile(
                    title: Text("熱門音樂社"),
                  ),
                  ListTile(
                    title: Text("琴韻吉他社"),
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(Icons.local_activity, color: Colors.yellow),
                title: Text("活動"),
              ),
              ExpansionTile(
                leading: Icon(Icons.favorite, color: Colors.red),
                title: Text("追蹤中"),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("設定"),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
