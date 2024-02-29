import 'package:finance/screens/buyscreen.dart';
import 'package:finance/screens/receive_screen.dart';
import 'package:finance/screens/send_screen.dart';
import 'package:finance/screens/swap_screen.dart';

import 'package:flutter/material.dart';

class BitcoinScreen extends StatelessWidget {
  const BitcoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 460,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 17, 13, 18),
                  Color.fromARGB(255, 90, 55, 116),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 3,
                    color: Color.fromARGB(196, 53, 59, 54),
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ]),
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    const Text(
                      "Bitcoin (BTC)",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFAAAAAA),
                          fontWeight: FontWeight.w500),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.qr_code_scanner,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset('assets/Logo.png'),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "\$30,078.60",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                RichText(
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Change\t\t',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFAAAAAA),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: '-0.21%',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFFC277FD),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/wave1.png',
                  // width: 360,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child: Container(
              width: 385,
              height: 100,
              color: const Color.fromARGB(255, 45, 45, 58),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Coin Balance",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFAAAAAA),
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Color(0xFFAAAAAA),
                            ),
                          ],
                        ),
                        Text(
                          "\$267.38",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "0.0095BTC",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFFAAAAAA),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\tAbout",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                  children: [
                    Text(
                      "\tAs the first decentralized virtual currency to\n meet widespread popularity and success,\n Bitcoin has inspired a host of other\n cryptocurrencies in its wake.",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFAAAAAA),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Container(
              width: double.infinity,
              height: 80,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.white30),
                ),
                color: Color(0xFF17171F),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SendScreen()));
                    },
                    child: Image.asset('assets/frame1.png'),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ReceiveScreen()));
                    },
                    child: Image.asset('assets/frame2.png'),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SwapScreen()));
                      },
                      child: Image.asset('assets/frame3.png')),
                  ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Container(
                      color: const Color(0xFFBFF5C7),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BuyScreen()));
                        },
                        icon: const Icon(
                          Icons.attach_money,
                          color: Colors.black,
                          size: 37,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
