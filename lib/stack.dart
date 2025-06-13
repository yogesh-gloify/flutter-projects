import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(color: Colors.purple[100], height: 300, width: 300),
            Container(color: Colors.pink[300], height: 200, width: 200),
            Container(color: Colors.pink[500], height: 100, width: 100),
          ],
        ),
      ),
    );
  }
}
