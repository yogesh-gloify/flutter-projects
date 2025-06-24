import 'package:flutter/material.dart';

class Cuisine extends StatefulWidget {
  final String title;
  final String imageUrl;
  final bool isSelected;

  const Cuisine({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.isSelected,
  });

  @override
  State<Cuisine> createState() => _CuisineState();
}

class _CuisineState extends State<Cuisine> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
        // bottomLeft: Radius.circular(20.0),
        // bottomRight: Radius.circular(20.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: widget.isSelected ? Colors.green : Colors.grey.shade300,
              width: widget.isSelected ? 5.0 : 1.0,
            ),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Image(
              image: AssetImage(widget.imageUrl),
              width: 60,
              height: 60,
              fit: BoxFit.contain,
            ),
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: widget.isSelected ? Colors.black : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
