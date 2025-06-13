import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late FixedExtentScrollController _controller;

  int selectedHour = 0;
  int selectedMinute = 0;
  int selectedAMPM = 0;

  @override
  void initState() {
    super.initState();
    _controller = FixedExtentScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'List Wheel Scroll View',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.grey[800],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      backgroundColor: Colors.grey[900],
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              controller: _controller,
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              onSelectedItemChanged: (value) {
                print('Selected hour: $value');
                setState(() {
                  selectedHour = value;
                });
              },
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 13,
                builder: (context, index) {
                  return MyHours(hours: index, selectedHours: selectedHour);
                },
              ),
            ),
          ),
          SizedBox(width: 10),
          Text(
            ": ",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: FixedExtentScrollPhysics(),
              onSelectedItemChanged: (value) => setState(() {
                selectedMinute = value;
              }),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 60,
                builder: (context, index) {
                  return MyMinutes(mins: index, selectedMins: selectedMinute);
                },
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: FixedExtentScrollPhysics(),
              onSelectedItemChanged: (value) {
                print('Selected AM/PM: $value');
                setState(() {
                  selectedAMPM = value; // 0 for AM, 1 for PM
                });
              },
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 2,
                builder: (context, index) {
                  if (index == 0) {
                    return AmPm(isItAm: true, selectedAMPM: selectedAMPM);
                  } else {
                    return AmPm(isItAm: false, selectedAMPM: selectedAMPM);
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyMinutes extends StatelessWidget {
  int mins;
  int selectedMins;

  MyMinutes({required this.mins, required this.selectedMins});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        color: mins == selectedMins ? Colors.blue : Colors.grey[800],
        child: Center(
          child: Text(
            mins < 10 ? '0$mins' : mins.toString(),
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class MyTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(child: Text('hello')),
    );
  }
}

class MyHours extends StatelessWidget {
  int hours;
  int selectedHours;

  MyHours({required this.hours, required this.selectedHours});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        color: hours == selectedHours ? Colors.blue : Colors.grey[800],
        child: Center(
          child: Text(
            hours.toString(),
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class AmPm extends StatelessWidget {
  final bool isItAm;
  int selectedAMPM;

  AmPm({required this.isItAm, required this.selectedAMPM});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        color:
            isItAm == true && selectedAMPM == 0 ||
                isItAm == false && selectedAMPM == 1
            ? Colors.blue
            : Colors.grey[800],
        child: Center(
          child: Text(
            isItAm == true ? 'AM' : "PM",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
