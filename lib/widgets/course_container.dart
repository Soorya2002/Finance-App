import 'package:flutter/material.dart';

class CourseContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color color;
  final String img;
  final String text1;

  const CourseContainer({
    super.key,
    this.width = 370,
    this.height = 70,
    this.color = const Color.fromARGB(255, 45, 45, 58),
    required this.img,
    required this.text1,
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
          children: [
            SizedBox(width: 25),
            Image.asset(
              img,
              height: 40,
              width: 40, // Set width of image
            ),
            SizedBox(width: 30),
            Text(
              text1,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
