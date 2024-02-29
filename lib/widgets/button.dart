import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final double width;
  final double height;
  final Color bcolor;
  final String text;
  final Color tcolor;

  const ButtonWidget({
    super.key,
    this.width = 370,
    this.height = 56,
    required this.bcolor,
    required this.text,
    required this.tcolor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(bcolor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13.0),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: tcolor,
          ),
        ),
      ),
    );
  }
}
