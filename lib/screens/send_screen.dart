import 'package:finance/widgets/button.dart';
import 'package:finance/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class SendScreen extends StatelessWidget {
  const SendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Send',
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
        padding: const EdgeInsets.only(
          left: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 35,
            ),
            const Text(
              "Select Currency",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomContainer(
              width: 380,
              img: 'assets/Logo.png',
              text1: 'Bitcoin',
              text2: ' ',
              imgsize: 40,
              imwidth: 15,
              imwidth1: 200,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Address",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: Container(
                width: 380,
                height: 70,
                color: const Color.fromARGB(255, 45, 45, 58),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "010223jjnbee5eeu28929100394...",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Icon(
                      Icons.qr_code_scanner,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Only BTC can be send to this address",
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFFAAAAAA),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Amount",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              child: Container(
                width: 380,
                height: 70,
                color: const Color.fromARGB(255, 45, 45, 58),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 25,
                    ),
                    RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '0.025BTC\t\t',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          TextSpan(
                            text: '(\$750.0)',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Balance: 3.56 BTC",
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFFAAAAAA),
              ),
            ),
            const SizedBox(
              height: 160,
            ),
            const ButtonWidget(
              bcolor: Color(0xFFBFF5C7),
              text: 'Send',
              tcolor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
