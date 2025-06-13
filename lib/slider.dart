import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _currentValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(_currentValue.toString(), style: TextStyle(fontSize: 30)),
          Slider(
            value: _currentValue,
            min: 0,
            max: 10,
            divisions: 10,
            label: _currentValue.toString(),
            activeColor: Colors.blue,
            inactiveColor: Colors.grey[400],
            thumbColor: Colors.blue[800],
            onChanged: (value) {
              setState(() {
                _currentValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
