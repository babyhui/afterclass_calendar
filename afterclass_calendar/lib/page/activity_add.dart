import 'package:flutter/material.dart';

class ActivityAdd extends StatelessWidget {
  @override
   TextEditingController _unameController = TextEditingController();
   TextEditingController _locationController = TextEditingController();
   TextEditingController _moneyController = TextEditingController();
   var a = '';
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('增加活動'),
          
        ),
        body:Column(
        children: <Widget>[
          TextField(
            autofocus: true,
            controller: _unameController, //設定
            
            decoration: InputDecoration(
              labelText: "活動名稱",
              hintText: "輸入該次活動名稱",
              prefixIcon: Icon(Icons.person),
            ),
          ),
          TextField(
            controller: _locationController,
            decoration: InputDecoration(
                labelText: "地點",
                hintText: "您的活動地點",
                prefixIcon: Icon(Icons.lock)),
           
          ),
          TextField(
            controller: _moneyController,
            decoration: InputDecoration(
                labelText: "入場費",
                hintText: "活動費用",
                prefixIcon: Icon(Icons.lock)),
           
          ),
          RaisedButton(child: Text("送出"),onPressed: (){print(_unameController.text);},),
        ],
      ));
  }
}
