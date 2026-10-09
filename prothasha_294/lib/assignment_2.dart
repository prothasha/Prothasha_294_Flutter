import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          padding: EdgeInsets.all(30),
          margin: EdgeInsets.all(20),
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 252, 235, 242),
            border: Border.all(
              width: 5,
              color: const Color.fromARGB(255, 145, 55, 92),
            ),
            // borderRadius: BorderRadius.all(
            //   Radius.circular(20),
            // ),
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                const Color.fromARGB(255, 255, 220, 234),
                const Color.fromARGB(255, 194, 83, 127),
              ],
            ),
          ),
          child: Text(
            "Hello Container",
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}