import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ticket/Utils/Colors_pallet.dart';

class Detail1 extends StatelessWidget {
  final Axis axis;
  final double dashedWidth;
  final Color color;

  const Detail1({
    Key? key,
    this.axis = Axis.horizontal,
    this.dashedWidth = 10,
    this.color = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(
        'assets/images/citilink.png',
        fit: BoxFit.fill,
      ),
      const SizedBox(
        height: 30,
      ),
      Row(
        children: [
          const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
          ),
          const SizedBox(width: 15),
          RichText(
            text: TextSpan(
              text: 'Passanger\n',
              style: GoogleFonts.poppins().copyWith(
                  color: MyColor.abu,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                  text: 'Bima Pratama',
                  style: GoogleFonts.poppins().copyWith(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 30,
      ),
      LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final boxWidth = axis == Axis.horizontal
              ? constraints.constrainWidth()
              : constraints.constrainHeight();
          final dashCount = (boxWidth / dashedWidth).floor();
          return Flex(
            direction: axis,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(dashCount, (_) {
              return SizedBox(
                width: dashedWidth / 2,
                height: 1,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: color),
                ),
              );
            }),
          );
        },
      )
    ]);
  }
}
