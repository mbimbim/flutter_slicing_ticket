import 'package:flutter/material.dart';
import 'package:slicing_ticket/Utils/Colors_pallet.dart';
import 'package:slicing_ticket/Widget/DashBoard/DetailUpComingFLight.dart';

class Detail2 extends StatelessWidget {
  const Detail2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      //Create Column
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '12:00 AM',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: MyColor.primaryColor),
          ),
          const SizedBox(
            height: 5,
          ),
          //Create Text
          const Text(
            'Jakarta',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          //Create RichText
          RichText(
            text: const TextSpan(
              text: 'Date\n',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: MyColor.abu,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Dec 26, 8:00 AM',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: MyColor.blackColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      //Create Image
      Container(
        child: Image.asset(
          'assets/images/airplane.png',
          width: 50,
        ),
      ),
      //Create Column
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Text(
            '15:00 AM',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: MyColor.primaryColor),
          ),
          const SizedBox(
            height: 5,
          ),
          //Create Text
          const Text(
            'Bandung',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          //Create RichText
          RichText(
            textAlign: TextAlign.end,
            text: const TextSpan(
              text: 'Date\n',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: MyColor.abu,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: 'Dec 26, 8:00 AM',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: MyColor.blackColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      //Create Column

      //Create Column
    ]);
    ;
  }
}
