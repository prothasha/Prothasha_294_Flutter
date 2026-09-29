import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        'Hey',
        style: TextStyle(
          fontSize: 24,
          color: Color.fromARGB(255, 213, 127, 189),
        ),
      ),
    );
  }
}
