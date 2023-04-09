// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:slicing_ticket/Utils/Colors_pallet.dart';

class BottoNavigationWidget extends StatefulWidget {
  BottoNavigationWidget(
      {Key? key, required this.currentIndex, required this.onItemTapped})
      : super(key: key);

  int currentIndex;

  Function(int index) onItemTapped;

  @override
  State<BottoNavigationWidget> createState() => _BottoNavigationWidgetState();
}

class _BottoNavigationWidgetState extends State<BottoNavigationWidget> {
  Color aaa = MyColor.abu;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.airplane_ticket),
          label: 'Airplane Ticket',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration),
          label: 'Calibration',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.map_sharp),
          label: 'Map Sharp',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_rounded),
          label: 'Account',
        ),
      ],
      currentIndex: widget.currentIndex,
      selectedItemColor: MyColor.primaryColor,
      unselectedItemColor: MyColor.abu,
      onTap: widget.onItemTapped,
    );
  }
}
