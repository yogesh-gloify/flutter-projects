import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _dateTime = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime(2025),
      firstDate: DateTime(2000),
      lastDate: DateTime(2026),
    ).then(
      (value) => {
        setState(() {
          _dateTime = value!;
        }),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(_dateTime.toString(), style: TextStyle(fontSize: 25)),
            MaterialButton(
              onPressed: _showDatePicker,
              color: Colors.blue,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'Choose Date',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
