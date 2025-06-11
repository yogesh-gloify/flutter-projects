import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(color: Colors.grey[300], height: 350),
            // name and caption
            Padding(
              padding: EdgeInsets.all(10),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 20),
                  children: [
                    TextSpan(
                      text: 'Yogesh Tiwari',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                    TextSpan(
                      text:
                          'This is very long text as a caption which will not overflow because of the rich text',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
