import 'package:finance/widgets/course_container.dart';
import 'package:flutter/material.dart';

class AcademyScreen extends StatelessWidget {
  const AcademyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          Center(
            child: Text(
              "Academy",
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFFAAAAAA),
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 295,
            ),
            child: Text(
              "Courses",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xFFAAAAAA),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CourseContainer(
            img: 'assets/course.png',
            text1: 'Course 1',
            height: 120,
          ),
          SizedBox(
            height: 25,
          ),
          CourseContainer(
            img: 'assets/course.png',
            text1: 'Course 2',
            height: 120,
          ),
          SizedBox(
            height: 25,
          ),
          CourseContainer(
            img: 'assets/course.png',
            text1: 'Course 3',
            height: 120,
          ),
          SizedBox(
            height: 25,
          ),
          CourseContainer(
            img: 'assets/course.png',
            text1: 'Course 4',
            height: 120,
          ),
        ],
      ),
    );
  }
}
