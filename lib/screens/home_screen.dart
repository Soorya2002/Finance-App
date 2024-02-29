import 'package:finance/screens/receive_screen.dart';
import 'package:finance/screens/send_screen.dart';
import 'package:finance/screens/swap_screen.dart';
import 'package:finance/widgets/bit_container.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 270,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 11, 15, 12),
                  Color.fromARGB(255, 94, 141, 102),
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
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 21,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.qr_code_scanner,
                        color: Colors.white,
                        size: 21,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      const Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Your Balance',
                                  style: TextStyle(
                                    color: Color.fromARGB(192, 255, 255, 255),
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Color.fromARGB(192, 255, 255, 255),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$15,938.56",
                                  style: TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "\+\$1204 (7.55%)",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFBFF5C7),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/wave.png',
                        width: 230,
                        // height: 90,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SendScreen()));
                },
                child: Image.asset('assets/frame1.png'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ReceiveScreen()));
                },
                child: Image.asset('assets/frame2.png'),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SwapScreen()));
                  },
                  child: Image.asset('assets/frame3.png')),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Send',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                'Receive',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Text(
                'Swap',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const SizedBox(
                width: 40,
              ),
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Container(
                  width: 167,
                  height: 28,
                  color: const Color(0xFFBFF5C7),
                  child: const Center(child: Text('Coins')),
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Container(
                  width: 167,
                  height: 28,
                  color: const Color(0xFF252530),
                  child: const Center(
                    child: Text(
                      'NFT',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SingleChildScrollView(
            child: Expanded(
              child: Column(
                children: [
                  BitContainer(),
                  BitContainer(),
                  BitContainer(),
                ],
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: NavBarWidget(
      //   initialIndex: _selectedIndex,
      //   onTabChanged: (index) {
      //     setState(() {
      //       _selectedIndex = index;
      //     });
      //   },
      // ),
    );
  }
}
