import 'package:finance/widgets/settingcontainer.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Center(
            child: Text(
              "Settings",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFFAAAAAA),
              ),
            ),
          ),
          SettingContainer(),
        ],
      ),
    );
  }
}
