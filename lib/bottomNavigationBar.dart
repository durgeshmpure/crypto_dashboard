import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 70,width:MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Color(0xff32323F),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25), topLeft: Radius.circular(25))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: () {}, icon: Image.asset('images/bicon1.png')),
          IconButton(onPressed: () {}, icon: Image.asset('images/bicon2.png')),
          IconButton(onPressed: () {}, icon: Image.asset('images/bicon3.png')),
          IconButton(onPressed: () {}, icon: Image.asset('images/bicon4.png')),
          IconButton(onPressed: () {}, icon: Image.asset('images/bicon5.png')),
        ],
      ),
    );
  }
}
