import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double boxHeight = 100;
  double boxWidth = 100;
  var boxColor = Colors.deepPurple;
  double boxX = -1;
  double boxY = -1;
  double box1X = -1;
  double box1Y = -1;
  double box2X = -1;
  double box2Y = -1;
  double box3X = -1;
  double box3Y = -1;
  double box4X = -1;
  double box4Y = -1;

  void _changeBoxColor() {
    setState(() {
      boxColor = Colors.pink;
    });
  }

  void _expandBox() {
    setState(() {
      boxHeight = 300;
      boxWidth = 300;
    });
  }

  void _moveBox() {
    setState(() {
      boxX = -1;
      boxY = -1;
      box1X = -0.5;
      box1Y = -0.5;
      box2X = 0;
      box2Y = 0;
      box3X = 0.5;
      box3Y = 0.5;
      box4X = 1;
      box4Y = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _moveBox,
      child: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: Wrap(
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              alignment: Alignment(boxX, boxY),
              curve: Curves.easeInOut,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.deepOrange,
              ),
            ),
            AnimatedContainer(
              duration: Duration(seconds: 2),
              alignment: Alignment(box1X, box1Y),
              curve: Curves.easeInOut,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.deepPurple,
              ),
            ),
            AnimatedContainer(
              duration: Duration(seconds: 2),
              alignment: Alignment(box2X, box2Y),
              curve: Curves.easeInOut,
              child: Container(width: 100, height: 100, color: Colors.green),
            ),
            AnimatedContainer(
              duration: Duration(seconds: 2),
              alignment: Alignment(box3X, box3Y),
              curve: Curves.easeInOut,
              child: Container(width: 100, height: 100, color: Colors.blue),
            ),
            AnimatedContainer(
              duration: Duration(seconds: 2),
              alignment: Alignment(box4X, box4Y),
              curve: Curves.easeInOut,
              child: Container(width: 100, height: 100, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
