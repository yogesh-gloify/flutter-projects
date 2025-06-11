import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Height: ${MediaQuery.of(context).size.height}'),
            Text('Width: ${MediaQuery.of(context).size.width}'),
            Text(
              'Aspect Ratio: ${MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2)}',
            ),
            Text('Orientation: ${MediaQuery.of(context).orientation}'),
          ],
        ),
      ),
    );
  }
}
