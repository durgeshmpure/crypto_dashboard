import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bottomNavigationBar.dart';
import 'appBAR.dart';
import 'coinCard.dart';
import 'walletBalanceCard.dart';
import 'expandedCoinCard.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<CoinCard> mywalletCoins = [
      const CoinCard('images/btcicon.png', 'BTC', 'Bitcoin', '786.9', 6.77),
      const CoinCard('images/dogeicon.png', 'ETH', 'Ethereum', '465.9', -6.77),
      const CoinCard('images/hicon.png', 'ETH', 'Ethereum', '465.9', 5.00),
    ];

    return Scaffold(
      backgroundColor: const Color(0xff1E1E2A),
      extendBody: true,
      bottomNavigationBar: const BottomNavigation(),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(left: 28.0, top: 10),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 28.0),
                child: AppBAR(), //The App Bar of the App
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(right: 28.0),
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Expanded(
                          flex: 8,
                          child: WalletBalancetotal('788.89', '24,600.80',
                              6.77)), //Renders the Total Balance CARD
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          flex: 2,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Color(0xff2B2A38),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(20))),
                            child: IconButton(
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 28.0, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Wallet',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'View all',
                          style: GoogleFonts.poppins(
                              color: const Color(0xff636272)),
                        ))
                  ],
                ),
              ), // HEADING MY WALLET and the View all Button
              SizedBox(
                height: 150,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, items) => mywalletCoins[items],
                    separatorBuilder: (context, _) => const SizedBox(width: 10),
                    itemCount: mywalletCoins.length),
              ), //ListView Of the Coin list horizontalView
              Padding(
                padding: const EdgeInsets.only(right: 28.0, top: 20, bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Transaction',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'View all',
                          style: GoogleFonts.poppins(
                              color: const Color(0xff636272)),
                        )) //Heading Recent Transaction and View all button
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 28.0),
                child: ExpandedcoinCard(
                    6.77,
                    'images/btcicon.png',
                    'ETH',
                    'Ethereum',
                    '3,475'), //Displays the Recent Transactions Card At last
              )
            ],
          ),
        )),
      ),
    );
  }
}
