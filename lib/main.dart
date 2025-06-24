import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zomato_app/dashboard.dart';
import 'package:zomato_app/splash.dart';

void main() {
  runApp(ZomatoApp());
}

class ZomatoApp extends StatelessWidget {
  const ZomatoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zomato App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/dashboard': (context) => Dashboard(),
      },
    );
  }
}
