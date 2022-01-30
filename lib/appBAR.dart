import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AppBAR extends StatelessWidget {
  const AppBAR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.white),
        ),
        IconButton(
            onPressed: () {},
            iconSize: 40,
            icon: Image.asset('images/icon.png')),
      ],
    );
  }
}
