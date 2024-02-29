import 'package:finance/widgets/button.dart';
import 'package:flutter/material.dart';

class ReceiveScreen extends StatelessWidget {
  const ReceiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Receive',
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
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Image.asset(
              'assets/Coin.png',
            ),
            const SizedBox(
              height: 15,
            ),
            RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'BTC\t\t',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                  TextSpan(
                    text: '(BEP20)',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(25)),
              child: Container(
                width: 283,
                height: 283,
                color: Colors.white,
                child: Image.asset('assets/QR Code.png'),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
              child: Container(
                width: 380,
                height: 75,
                color: const Color.fromARGB(255, 45, 45, 58),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '010223jjnbee5eeu289291003945hk',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'k42f22keem1a3',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Only BTC can be send to this address",
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFFAAAAAA),
              ),
            ),
            const SizedBox(
              height: 105,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonWidget(
                  width: 140,
                  height: 52,
                  bcolor: Color.fromARGB(255, 45, 45, 58),
                  text: 'Share',
                  tcolor: Colors.white,
                ),
                ButtonWidget(
                  width: 140,
                  height: 52,
                  bcolor: Color(0xFFBFF5C7),
                  text: 'Copy',
                  tcolor: Colors.black,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
