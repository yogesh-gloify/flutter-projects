import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:zomato_app/components/cuisine.dart';

class CuisineList extends StatefulWidget {
  const CuisineList({super.key});

  @override
  State<CuisineList> createState() => _CuisineListState();
}

class _CuisineListState extends State<CuisineList> {
  final List<Map<String, String>> cuisines = [
    {
      'title': 'Explore\u27A4',
      'imageUrl': 'lib/assets/explore.png',
      'isSelected': 'true',
    },
    {
      'title': 'North Indian',
      'imageUrl': 'lib/assets/cuisine_north_indian.png',
      'isSelected': 'false',
    },
    {
      'title': 'South Indian',
      'imageUrl': 'lib/assets/cuisine_south_indian.png',
      'isSelected': 'false',
    },
    {
      'title': 'Italian',
      'imageUrl': 'lib/assets/cuisine_italian.png',
      'isSelected': 'false',
    },
    {
      'title': 'Chinese',
      'imageUrl': 'lib/assets/cuisine_chinese.png',
      'isSelected': 'false',
    },
    {
      'title': 'Desserts',
      'imageUrl': 'lib/assets/cuisine_dessert.png',
      'isSelected': 'false',
    },
  ];

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cuisines.length,
        itemBuilder: (context, index) {
          final cuisine = cuisines[index];
          return GestureDetector(
            onTap: () {
              // Handle tap event
              setState(() {
                for (var c in cuisines) {
                  c['isSelected'] = 'false'; // Deselect all
                }
                cuisine['isSelected'] = 'true'; // Select the tapped one
              });
            },
            child: Cuisine(
              isSelected: cuisine['isSelected'] == 'true' ? true : false,
              title: cuisine['title']!,
              imageUrl: cuisine['imageUrl']!,
            ),
          );
        },
      ),
    );
  }
}
