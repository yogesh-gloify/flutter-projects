import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List _posts = ['post 1', 'post 2', 'post 3', 'post 4', 'post 5'];
  final List _stories = ['story 1', 'story 2', 'story 3', 'story 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // instagram stories
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _stories.length,
              itemBuilder: (context, index) => MyCircle(child: _stories[index]),
            ),
          ),

          // instagram posts
          Expanded(
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, index) {
                return MySquare(child: _posts[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MySquare extends StatelessWidget {
  final String child;
  const MySquare({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        color: Colors.deepPurple[200],
        child: Center(
          child: Text(
            child,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
          ),
        ),
      ),
    );
  }
}

class MyCircle extends StatelessWidget {
  final String child;
  const MyCircle({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.pink[200],
        ),
        child: Center(
          child: Text(
            child,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
