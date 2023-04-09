// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ticket/Page/Boardingpass.dart';
import 'package:slicing_ticket/Utils/Colors_pallet.dart';
import 'package:slicing_ticket/Utils/Text_Style.dart';

import '../Widget/DashBoard/BottomNavigationBar.dart';
import '../Widget/DashBoard/DetailUpComingFLight.dart';
import '../Widget/DashBoard/FormSearchFlight.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final controlFrom = TextEditingController();
  final controlTo = TextEditingController();
  // int currentIndex = 0;

  // int _selectedIndex = 0;

  // final List<Widget> children = [Dashboard(), BoardingPass()];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controlFrom.text = 'Jakarta';
    controlTo.text = 'Bandung';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        //create CircleImage and NameW
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),
            ),
            const SizedBox(width: 10),
            //RichText
            RichText(
              text: TextSpan(
                text: 'Hello, ',
                style: GoogleFonts.poppins().copyWith(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Bima Pratama',
                    style: GoogleFonts.poppins().copyWith(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),

            //Create Menu left
            const Spacer(),

            //Create menu
            PopupMenuButton(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Row(
                    children: const [
                      Icon(Icons.settings),
                      SizedBox(width: 10),
                      Text('Settings'),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Row(
                    children: const [
                      Icon(Icons.logout),
                      SizedBox(width: 10),
                      Text('Logout'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: const Color(0xFF0067FF),
      ),

      // Body
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4.5,
              color: MyColor.primaryColor,
            ),
            Column(
              children: [
                const FormSearchFlight(),
                Container(
                  margin: const EdgeInsets.only(right: 20, left: 20),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Upcoming Flight',
                        style: MyTextStyle.Bold,
                      ),
                      Text(
                        'See all',
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: MyColor.abu),
                      )
                    ],
                  ),
                ),
                const DetailUpcomingFlight()
              ],
            ),
          ],
        ),
      ),
      // Create 5 BottonNavigationBar in flutter
      // connecet db mysql in nodejs

      // bottomNavigationBar: BottoNavigationWidget(
      //   currentIndex: 0,
      // )
      // bottomNavigationBar: BottoNavigationWidget(
      //   currentIndex: _selectedIndex,
      //   onItemTapped: _onItemTapped,
      // )
    );
  }

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });

  //   switch (index) {
  //     case 0:
  //       print('Home');
  //       break;
  //     case 1:
  //       print('Airplane Ticket');

  //       break;
  //     case 2:
  //       print('Compass Calibration');
  //       break;
  //     case 3:
  //       print('Map Sharp');
  //       break;
  //     case 4:
  //       print('Account Circle Rounded');
  //       break;
  //     default:
  //       print('Another Item');
  //   }
  // }
}
