import 'package:finance/widgets/button.dart';
import 'package:finance/widgets/custom_container.dart';

import 'package:flutter/material.dart';

class BuyScreen extends StatelessWidget {
  const BuyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          const Center(
            child: Text(
              "Buy & Sell",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFFAAAAAA),
              ),
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    Text(
                      "You pay",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    Text(
                      "Balance: \$15668.56",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFFAAAAAA),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomContainer(
                  img: 'assets/buy1.png',
                  imwidth: 5,
                  iconcolor: Colors.white,
                  concolor: Colors.transparent,
                  imgsize: 50,
                  text1: 'USD',
                  text2: '\$270.00',
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "You receive",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomContainer(
                  img: 'assets/Logo.png',
                  imwidth: 10,
                  imgsize: 40,
                  text1: 'Bitcoin',
                  text2: '0.0095 BTC',
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Payment method",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  child: Container(
                    width: 370,
                    height: 210,
                    color: const Color.fromARGB(255, 45, 45, 58),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 330,
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              side: MaterialStateProperty.all<BorderSide>(
                                const BorderSide(color: Colors.white12),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 45, 45, 58),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Google pay',
                                  style: TextStyle(
                                    color: Color.fromARGB(158, 255, 255, 255),
                                  ),
                                ),
                                Image.asset('assets/Gpay Icon.png'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 330,
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              side: MaterialStateProperty.all<BorderSide>(
                                const BorderSide(color: Colors.white24),
                              ),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 45, 45, 58),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Visa*3783',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Image.asset('assets/Visa Icon.png'),
                              ],
                            ),
                          ),
                        ),
                        const Text(
                          "+ ADD NEW PAYMENT METHOD",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const ButtonWidget(
                  bcolor: Color(0xFFBFF5C7),
                  text: 'Continue',
                  tcolor: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
