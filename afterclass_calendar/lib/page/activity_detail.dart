import 'package:flutter/material.dart';

class ActivityDetail extends StatelessWidget {
  // final ClubPost post;
  // final ClubHttp clubHttp = ClubHttp();

  // ClubDetail({
  //   @required this.post,
  // });

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
                    "images/unnamed.jpg",
                  ),
                ),
                ListTile(title: Text("data")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
