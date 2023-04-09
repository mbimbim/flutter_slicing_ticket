import 'package:flutter/material.dart';
import 'package:slicing_ticket/Page/Boardingpass.dart';
import 'package:slicing_ticket/Page/Dashboard.dart';
import 'package:slicing_ticket/Widget/DashBoard/BottomNavigationBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
  int currentIndex = 0;

  static int _selectedIndex = 0;

  final List<Widget> _children = [
    Dashboard(),
    BoardingPass(
      select: _selectedIndex,
    )
  ];
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            body: widget._children.elementAt(MyApp._selectedIndex),
            bottomNavigationBar: BottoNavigationWidget(
              currentIndex: MyApp._selectedIndex,
              onItemTapped: _onItemTapped,
            )));
  }

  void _onItemTapped(int index) {
    setState(() {
      MyApp._selectedIndex = index;
    });

    switch (index) {
      case 0:
        print('Home');
        break;
      case 1:
        print('Airplane Ticket');

        break;
      case 2:
        print('Compass Calibration');
        break;
      case 3:
        print('Map Sharp');
        break;
      case 4:
        print('Account Circle Rounded');
        break;
      default:
        print('Another Item');
    }
  }
}
