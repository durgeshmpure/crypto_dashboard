import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CoinCard extends StatelessWidget {
  final String logo;
  final double change;
  final String coinTitle;
  final String coinShort;
  final String balance;
  const CoinCard(
      this.logo, this.coinTitle, this.coinShort, this.balance, this.change,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                          height: 35,
                          width: 30,
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
                        style: GoogleFonts.poppins(color: Colors.white)),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Balance',
                        style: GoogleFonts.poppins(color: Colors.white)),
                    Text(balance,
                        style: GoogleFonts.poppins(color: Colors.white)),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      change > 0
                          ? Icons.keyboard_arrow_up_outlined
                          : Icons.keyboard_arrow_down_outlined,
                      color: change > 0 ? Colors.green : Colors.red,
                    ),
                    Text('$change%',
                        style: GoogleFonts.poppins(
                            color: change > 0 ? Colors.green : Colors.red))
                  ],
                )
              ],
            )
          ],
        ),
      ),
      decoration: const BoxDecoration(
          color: Color(0xff2B2A38),
          borderRadius: BorderRadius.all(Radius.circular(20))),
    );
  }
}

