import 'package:flutter/material.dart';
import 'package:afterclass_calendar/page/activity.dart';
import 'package:afterclass_calendar/page/calendar.dart';
import 'package:afterclass_calendar/page/club.dart';
import 'package:afterclass_calendar/page/manage.dart';
import 'package:afterclass_calendar/page/account.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(primarySwatch: Colors.red, primaryColor: Colors.blueGrey[400]),
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BottomNavigationController(),
      ),
    );
  }
}

class BottomNavigationController extends StatefulWidget {
  BottomNavigationController({Key key}) : super(key: key);

  @override
  _BottomNavigationControllerState createState() =>
      _BottomNavigationControllerState();
}

class _BottomNavigationControllerState
    extends State<BottomNavigationController> {
  //目前選擇頁索引值
  int _currentIndex = 1; //預設值
  final pages = [Activity(), Calendar(), Club(), Manage(), Account()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('課外活動行事曆'),
      // ),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('首頁')),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), title: Text('行事曆')),
          BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('社團')),
          BottomNavigationBarItem(
              icon: Icon(Icons.business_center), title: Text('管理')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text('個人資料')),
        ],
        currentIndex: _currentIndex, //目前選擇頁索引值
        selectedItemColor: Colors.lightBlue[400], //選擇頁顏色
        unselectedItemColor: Colors.lightBlue[800],
        onTap: _onItemClick, //BottomNavigationBar 按下處理事件
      ),
    );
  }

  //BottomNavigationBar 按下處理事件，更新設定當下索引值
  void _onItemClick(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// /// This Widget is the main application widget.
// class MyApp extends StatelessWidget {
//   static const String _title = 'Flutter Code Sample';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: _title,
//       home: MyStatefulWidget(),
//     );
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   MyStatefulWidget({Key key}) : super(key: key);

//   @override
//   _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   int _selectedIndex = 0;
//   static const TextStyle optionStyle =
//       TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text(
//       'Index 0: Home',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 1: Business',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 2: School',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 3: Alarm',
//       style: optionStyle,
//     ),
//     Text(
//       'Index 4: what',
//       style: optionStyle,
//     ),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('課外活動行事曆'),
//       ),
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             title: Text('Home'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.calendar_today),
//             title: Text('Calendar'),
//           ),
//            BottomNavigationBarItem(
//             icon: Icon(Icons.message),
//             title: Text('Message'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business_center),
//             title: Text('Manage'),
//           ),
//          BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle),
//             title: Text('Account'),
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: Colors.amber[800],
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
