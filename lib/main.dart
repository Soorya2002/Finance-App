import 'package:finance/widgets/navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const NavBarWidget(),
    theme: ThemeData(
      scaffoldBackgroundColor: const Color(0xFF17171F),
    ),
  ));
}
