import 'package:flutter/material.dart';

class Manage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('管理'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("社員"),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    "images/圖片顯示中.jpg",
                  ),
                ),
                title: Text("逢甲大學 iOS Club 志工隊"),
                onTap: () {},
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    "images/圖片顯示中.jpg",
                  ),
                ),
                title: Text("熱門音樂社"),
                onTap: () {},
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    "images/圖片顯示中.jpg",
                  ),
                ),
                title: Text("琴韻吉他社"),
                onTap: () {},
              ),
              ListTile(
                title: Text("${DateTime.now()}"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
