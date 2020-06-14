import 'package:afterclass_calendar/page/activity_detail.dart';
import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("活動"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 0,
        ),
        children: <Widget>[
          Column(
            children: <Widget>[
              FlatButton(
                child: Image.asset(
                  'images/unnamed.jpg',
                  width: 130,
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ActivityDetail()));
                },
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
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ActivityDetail()));
                },
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
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ActivityDetail()));
                },
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
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ActivityDetail()));
                },
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
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ActivityDetail()));
                },
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
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ActivityDetail()));
                },
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
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ActivityDetail()));
                },
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
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ActivityDetail()));
                },
              ),
              Text("data")
            ],
          ),
        ],
      ),
    );
  }
}

// class Activity extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: list2(context),
//     );
//   }
// }

// class list2 extends StatefulWidget {
//   list2(BuildContext context);

//   @override
//   _list2State createState() => _list2State();
// }

// class _list2State extends State<list2> {
//   @override
//   Widget build(BuildContext context) {
//     list.add(aasd);
//     list.add(aasd);
//     return Container(
//       child: ListView(
//         children: list,
//       ),
//     );
//   }
// }

// var aasd = ListTile(
//   title: Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: <Widget>[
//       Column(
//         children: <Widget>[
//           FlatButton(
//             child: Image.asset(
//               'images/unnamed.jpg',
//               width: 130,
//             ),
//             onPressed: () {},
//           ),
//           Text("data")
//         ],
//       ),
//       Column(
//         children: <Widget>[
//           FlatButton(
//             onPressed: () {},
//             child: Image.asset(
//               'images/unnamed.jpg',
//               width: 130,
//             ),
//           ),
//           Text("data")
//         ],
//       ),
//     ],
//   ),
// );
// List<Widget> list = <Widget>[];
