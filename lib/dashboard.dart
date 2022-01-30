import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bottomNavigationBar.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xff1E1E2A),
      extendBody: true,
      bottomNavigationBar: const BottomNavigation(),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 28.0,right: 28,top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xff353448),
                              borderRadius: BorderRadius.circular(13)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset(
                                'images/icon1.png',
                                height: 35,
                                width: 30,
                              ),
                            ),
                          )),
                    ),
                    Text(
                      "Home",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    IconButton(
                        onPressed: () {},
                        iconSize: 40,
                        icon: Image.asset('images/icon.png')),
                  ],
                ),
                SizedBox(height:30),
                Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xffFAF8B3), Color(0xffFEDC61)]),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 18.0, top: 10),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  icon: const Icon(Icons.more_horiz),
                                  onPressed: () {}),
                            ),
                          ),
                          Text(
                            'Total Balance',
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '\$24,600.80',
                            style: GoogleFonts.play(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          )),
    );
  }
}
