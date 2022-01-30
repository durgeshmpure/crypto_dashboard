import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WalletBalancetotal extends StatelessWidget {
  final String profit;
  final String balance;
  final double change;
  const WalletBalancetotal(this.profit, this.balance, this.change);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xffFAF8B3),
                      Color(0xffFEDC61),
                      Color(0xffFDD860)
                    ]),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0, top: 10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                          icon: const Icon(Icons.more_horiz),
                          onPressed: () {}),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Total Balance',
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                            iconEnabledColor: const Color(0xffF6CD35),
                            items: [
                              DropdownMenuItem(
                                  child: Text(
                                    'USD',
                                    style: GoogleFonts.poppins(
                                        color: const Color(0xffF6CD35)),
                                  ))
                            ],
                            onChanged: (index) {}),
                      )
                    ],
                  ),
                  Text(
                    '\$' + balance,
                    style: GoogleFonts.play(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const SizedBox(height: 15)
                ],
              ),
            )),
        Container(
          decoration: const BoxDecoration(
              color: Color(0xff2B2A38),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20))),
          child: Padding(
            padding: const EdgeInsets.only(
                top: 13.0, right: 10, left: 15, bottom: 10),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Monthly Profit',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff636272)),
                      ),
                      Row(
                        children: [
                          Text('\$' + profit,
                              style: GoogleFonts.poppins(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                          const SizedBox(
                            width: 10,
                          ),
                          Text('$change' '%',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  color: change > 0 ? Colors.green : Colors.red)),
                          Icon(
                            change > 0
                                ? Icons.keyboard_arrow_up_outlined
                                : Icons.keyboard_arrow_down_outlined,
                            color: change > 0 ? Colors.green : Colors.red,
                          ),
                        ],
                      )
                    ],
                  ),
                  IconButton(padding:EdgeInsets.zero,constraints: const BoxConstraints(maxHeight: 40,minHeight: 10),
                      iconSize: 40,
                      onPressed: () {},
                      icon: Image.asset('images/icon3.png'))
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

