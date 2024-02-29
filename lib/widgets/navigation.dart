import 'package:finance/screens/academy.dart';
import 'package:finance/screens/buyscreen.dart';
import 'package:finance/screens/home_screen.dart';
import 'package:finance/screens/settingscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({
    super.key,
  });

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  int initialIndex = 0;
  List pages = const [
    HomeScreen(),
    BuyScreen(),
    AcademyScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF252535),
          ),
          child: SizedBox(
            height: 70,
            child: GNav(
              selectedIndex: initialIndex,
              onTabChange: (index) {
                setState(() {
                  initialIndex = index;
                });
              },
              gap: 8,
              activeColor: const Color.fromARGB(140, 76, 175, 79),
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              duration: const Duration(milliseconds: 600),
              // tabBackgroundColor: Colors.green,
              tabs: const [
                GButton(
                  icon: Icons.wallet,
                  text: 'Wallet',
                ),
                GButton(
                  icon: Icons.attach_money,
                  text: 'Buy/Sell',
                ),
                GButton(
                  icon: Icons.school,
                  text: 'Academy',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Settings',
                ),
              ],
            ),
          ),
        ),
      ),
      body: pages[initialIndex],
    );
  }
}
