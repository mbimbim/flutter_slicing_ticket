// ignore_for_file: unused_import, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ticket/Utils/Text_Style.dart';
import 'package:slicing_ticket/Widget/BoardingPass/Detail1.dart';
import 'package:slicing_ticket/Widget/BoardingPass/Detail2.dart';
import 'package:slicing_ticket/Widget/BoardingPass/Detail3.dart';
import 'package:slicing_ticket/Widget/Dashboard/Button_SerachFilght.dart';
import 'package:slicing_ticket/main.dart';

import '../Utils/Colors_pallet.dart';
import '../Widget/Dashboard/DetailUpComingFLight.dart';
import '../Widget/Dashboard/FormSearchFlight.dart';

class BoardingPass extends StatefulWidget {
  int select;
  BoardingPass({Key? key, required this.select}) : super(key: key);

  @override
  State<BoardingPass> createState() => _BoardingPassState();
}

class _BoardingPassState extends State<BoardingPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            //Navigator.pop(context);
            _onItemTapped(0);
          },
        ),
        title: Text(
          'Boarding Pass',
          style: MyTextStyle.Bold,
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF0067FF),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4.5,
              color: MyColor.primaryColor,
            ),
            Container(
              margin: const EdgeInsets.only(right: 20, left: 20),
              child: Column(
                children: [
                  Container(
                    // margin: const EdgeInsets.only(right: 20, left: 20),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: const [
                        Detail1(),
                        SizedBox(height: 30),
                        Detail2(),
                        SizedBox(height: 30),
                        Detail3(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ButtonSearchFlight(onpress: () {}, text: 'Donwload Ticket'),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      widget.select = index;
    });
  }
}
