import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:slide_to_act/slide_to_act.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent[100],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SlideAction(
            borderRadius: 15,
            elevation: 0,
            innerColor: Colors.deepPurple[500],
            outerColor: Colors.deepPurple[200],
            sliderButtonIcon: Icon(Icons.lock, color: Colors.white),
            text: 'Slide to unlock',
            sliderRotate: false,
            onSubmit: () {
              Fluttertoast.showToast(msg: 'Unlocked!');
            },
            submittedIcon: Icon(
              Icons.lock_open,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
