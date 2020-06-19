import 'package:flutter/material.dart';

class ActivityAdd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('增加活動'),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("名稱"),
                TextField(
                  cursorColor: Colors.blue,
                  maxLength: 10,
                ),
              ],
            )
          ],
        ));
  }
}
