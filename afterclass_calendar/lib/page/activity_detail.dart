import 'package:afterclass_calendar/activity_service/activity_http.dart';
import 'package:afterclass_calendar/activity_service/activity_model.dart';
import 'package:flutter/material.dart';

class ActivityDetail extends StatelessWidget {
  final ActivityPost post;
  final ActivityHttp clubHttp = ActivityHttp();

  ActivityDetail({
    @required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("活動"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Image.asset(
                    "images/圖片顯示中.jpg",
                  ),
                ),
                ListTile(title: Text(post.name)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
