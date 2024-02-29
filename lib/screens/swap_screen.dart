import 'package:finance/widgets/button.dart';
import 'package:finance/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class SwapScreen extends StatelessWidget {
  const SwapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Swap',
          style: TextStyle(
            fontSize: 24,
            color: Color(0xFFAAAAAA),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF17171F),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.keyboard_arrow_left,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "You pay",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Balance: 3.09ETH",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFFAAAAAA),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomContainer(
              height: 80,
              img: 'assets/etherium.png',
              text1: 'Ethereum',
              text2: '0.15ETH',
              text3: '\$270.61',
              imgsize: 40,
              imwidth: 15,
              imwidth1: 5,
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "You receive",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                Image.asset('assets/Swap Icon.png'),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomContainer(
              height: 80,
              img: 'assets/Coin.png',
              text1: 'Bitcoin',
              text2: '0.0095 BTC',
              text3: '\$267.38',
              imgsize: 40,
              imwidth: 15,
              imwidth1: 5,
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Exchange rate",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "1 ETH = 0.06383 BTC",
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFFAAAAAA),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 330,
            ),
            const ButtonWidget(
              bcolor: Color(0xFFBFF5C7),
              text: 'Swap now',
              tcolor: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
