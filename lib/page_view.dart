import 'package:flutter/material.dart';
import 'package:welcome_app/posts/post_1.dart';
import 'package:welcome_app/posts/post_2.dart';
import 'package:welcome_app/posts/post_3.dart';
import 'package:welcome_app/posts/post_4.dart';
import 'package:welcome_app/posts/post_5.dart';

class HomePage extends StatelessWidget {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [Post1(), Post2(), Post3(), Post4(), Post5()],
      ),
    );
  }
}
