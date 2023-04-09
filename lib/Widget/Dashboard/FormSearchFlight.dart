import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ticket/Utils/Colors_pallet.dart';
import 'package:slicing_ticket/Widget/Dashboard/Button_SerachFilght.dart';

import '../../Utils/Text_Style.dart';

class FormSearchFlight extends StatefulWidget {
  const FormSearchFlight({
    Key? key,
  }) : super(key: key);

  @override
  State<FormSearchFlight> createState() => _FormSearchFlightState();
}

class _FormSearchFlightState extends State<FormSearchFlight> {
  final controlFrom = TextEditingController();
  final controlTo = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controlFrom.text = 'Jakarta';
    controlTo.text = 'Bandung';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20, left: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Column(children: [
        //Create TextFieldCustom
        Container(
            //    margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child:
                // Create TextFormField custom

                TextFormField(
              controller: controlFrom,
              style: MyTextStyle.Bold,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                    //Outline border type for TextFeild
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: MyColor.abu,
                      width: 0.5,
                    )),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 38, 132, 255),
                      width: 2,
                    )),
                labelText: 'From',

                labelStyle: GoogleFonts.poppins()
                    .copyWith(fontSize: 13, color: MyColor.abu),
                // hintStyle: GoogleFonts.poppins().copyWith(
                //   color: MyColor.abu,
                //   fontSize: 16,

                suffixIcon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: MyColor.blackColor,
                ),
              ),
            )),

        Container(
            // margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            padding: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child:
                // Create TextFormField custom

                TextFormField(
              controller: controlTo,
              style: MyTextStyle.Bold,
              decoration: InputDecoration(
                enabledBorder: const OutlineInputBorder(
                    //Outline border type for TextFeild
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: MyColor.abu,
                      width: 0.5,
                    )),
                focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 38, 132, 255),
                      width: 2,
                    )),
                labelText: 'From',
                labelStyle: GoogleFonts.poppins()
                    .copyWith(fontSize: 13, color: MyColor.abu),
                suffixIcon: const Icon(
                  Icons.keyboard_arrow_down,
                  color: MyColor.blackColor,
                ),
              ),
            )),

        Container(
          padding: const EdgeInsets.only(top: 20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              //margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: MyColor.abu,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Departure',
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 13,
                        color: MyColor.abu,
                        fontWeight: FontWeight.normal),
                  ),
                  Text('12 May, 2021', style: MyTextStyle.Bold),
                ],
              ),
            ),
            Container(
              //margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 1,
                  color: MyColor.abu,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Return',
                    style: GoogleFonts.poppins().copyWith(
                        fontSize: 13,
                        color: MyColor.abu,
                        fontWeight: FontWeight.normal),
                  ),
                  Text('12 May, 2021', style: MyTextStyle.Bold),
                ],
              ),
            ),
          ]),
        ),

        const SizedBox(
          height: 20,
        ),
        ButtonSearchFlight(
          text: 'Search Flight',
          onpress: () {},
        )
        // ElevatedButton(
        //     style: ButtonStyle(
        //         backgroundColor: MaterialStateProperty.all(Color(0XFFC3F4A6))),
        //     onPressed: () {},
        //     child: Container(
        //       child: Text(
        //         'Search Flight',
        //         style: GoogleFonts.poppins().copyWith(
        //             fontSize: 15,
        //             color: Colors.black,
        //             fontWeight: FontWeight.bold),
        //         textAlign: TextAlign.center,
        //       ),
        //     ))

        // GestureDetector(

        //   onTap: () {}, child: ButtonSearchFlight())
      ]),
    );
  }
}
