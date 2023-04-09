import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ticket/Utils/Colors_pallet.dart';
import 'package:slicing_ticket/Widget/DashBoard/Button_SerachFilght.dart';
import 'package:syncfusion_flutter_barcodes/barcodes.dart';

class Detail3 extends StatelessWidget {
  const Detail3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String no_penerbangan = 'AJ 708';
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FLIGHT',
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: MyColor.abu),
                ),
                Text(
                  no_penerbangan,
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: MyColor.blackColor),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CLASS',
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: MyColor.abu),
                ),
                Text(
                  'Business',
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: MyColor.blackColor),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SEAT',
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: MyColor.abu),
                ),
                Text(
                  '17E',
                  style: GoogleFonts.poppins().copyWith(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: MyColor.blackColor),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 70,
          width: 400,
          child: SfBarcodeGenerator(
            value: no_penerbangan,
            showValue: true,
          ),
        ),
      ],
    );
  }
}
