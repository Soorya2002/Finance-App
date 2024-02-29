import 'package:finance/screens/bitcoin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BitContainer extends StatelessWidget {
  const BitContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BitcoinScreen()));
            },
            child: Container(
              width: 370,
              height: 90,
              color: const Color.fromARGB(255, 45, 45, 58),
              child: Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset('assets/Logo.png'),
                  const SizedBox(
                    width: 15,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Bitcoin",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "0.05101 BTC",
                        style: TextStyle(
                          color: Color.fromARGB(158, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 130,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "\$4,179.12",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Text("+15.1%", style: TextStyle(color: Color(0xFFBFF5C7)))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
