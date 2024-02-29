import 'package:finance/widgets/settingbutton.dart';
import 'package:flutter/material.dart';

class SettingContainer extends StatelessWidget {
  final double width;
  final Color color;

  const SettingContainer({
    super.key,
    this.width = 370,
    this.color = const Color.fromARGB(255, 45, 45, 58),
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: Container(
            width: width,
            height: 220,
            color: color,
            child: const Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                    Text(
                      'Trade',
                      style: TextStyle(
                        color: Color(0xFFAAAAAA),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SettingButton(text: 'Crypto Wallet'),
                SettingButton(text: 'Track'),
                SettingButton(text: 'Fiat Wallet'),
                SettingButton(text: 'Recurring Buy'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: Container(
            width: width,
            height: 130,
            color: color,
            child: const Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                    Text(
                      'Spend',
                      style: TextStyle(
                        color: Color(0xFFAAAAAA),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SettingButton(text: 'Card'),
                SettingButton(text: 'Pay'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: Container(
            width: width,
            height: 130,
            color: color,
            child: const Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Finance',
                      style: TextStyle(
                        color: Color(0xFFAAAAAA),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SettingButton(text: 'Supercharger'),
                SettingButton(text: 'Earn'),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          child: Container(
            width: width,
            height: 130,
            color: color,
            child: const Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'More',
                      style: TextStyle(
                        color: Color(0xFFAAAAAA),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                SettingButton(text: 'Rewards'),
                SettingButton(text: 'Refer'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
