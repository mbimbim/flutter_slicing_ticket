// ignore_for_file: unused_import, must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ticket/Utils/Text_Style.dart';

class ButtonSearchFlight extends StatelessWidget {
  String text;
  ButtonSearchFlight({Key? key, required this.onpress, required this.text})
      : super(key: key);

  Function() onpress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0XFFC3F4A6)),
          child: Text(
            text,
            style: MyTextStyle.Bold,
            textAlign: TextAlign.center,
          )),
    );

    //Create statemanage riverpod in flutte?
  }
}
