import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ExpandedcoinCard extends StatelessWidget {
  final String logo;
  final double change;
  final String coinTitle;
  final String coinShort;
  final String balance;
  ExpandedcoinCard(
      this.change, this.logo, this.coinTitle, this.coinShort, this.balance);
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xff2B2A38),
            borderRadius: BorderRadius.circular(18)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 20, bottom: 10),
          child: Row(
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff24232F),
                      borderRadius: BorderRadius.circular(13)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        logo,
                        height: 50,
                        width: 45,
                      ),
                    ),
                  )),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coinTitle,
                    style: GoogleFonts.poppins(color: Colors.white),
                  ),
                  Text(coinShort,
                      style: GoogleFonts.poppins(color: Colors.white))
                ],
              ),
              Image.asset(
                'images/graph.png',
                width: 125,
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('\$' + balance,
                      style: GoogleFonts.poppins(color: Colors.white)),
                  Text('$change%',
                      style: GoogleFonts.poppins(color: Colors.green))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

