import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final Color iconcolor;
  final Color concolor;
  final String img;
  final String text1;
  final String text2;
  final String text3;
  final double imgsize;
  final double imwidth;
  final double imwidth1;

  const CustomContainer({
    super.key,
    this.width = 370,
    this.height = 70,
    this.color = const Color.fromARGB(255, 45, 45, 58),
    required this.img,
    required this.text1,
    required this.text2,
    this.text3 = '',
    this.iconcolor = Colors.white,
    this.concolor = Colors.white,
    required this.imgsize,
    required this.imwidth,
    this.imwidth1 = 10,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: Container(
        width: width,
        height: height,
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: imwidth,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  child: Container(
                    color: concolor,
                    child: Image.asset(
                      img,
                      height: imgsize,
                    ),
                  ),
                ),
                SizedBox(
                  width: imwidth,
                ),
                Text(
                  text1,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                SizedBox(
                  width: imwidth1,
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 15,
                top: 13,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    text2,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    text3,
                    style: const TextStyle(
                      color: Color(0xFFAAAAAA),
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
