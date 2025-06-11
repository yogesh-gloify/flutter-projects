import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 300,
            width: 300,
            color: Colors.blue,
            child: Image.asset('assets/welcome.png', fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
