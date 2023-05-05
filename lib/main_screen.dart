import 'package:flutter/material.dart';

import 'color_generator.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.title});

  final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // initial color
  Color backgroundColor = const Color.fromARGB(255, 210, 200, 150);

  generateRandomColor() {
    //
    setState(() {
      backgroundColor = ColorGenerator.generateRandomColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        generateRandomColor();
      },
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: const Center(
          child: Text(
            "Hello there",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
