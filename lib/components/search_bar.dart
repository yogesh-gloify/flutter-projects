import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final bool isVegMode;
  final Function(bool) toggleVegMode;
  const SearchBar({
    super.key,
    required this.isVegMode,
    required this.toggleVegMode,
  });

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Container(
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Restaurant name or a dish...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 40,
                    maxHeight: 40,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                  suffixIconConstraints: BoxConstraints(
                    minWidth: 40,
                    maxHeight: 40,
                  ),
                  suffixIcon: Container(
                    padding: EdgeInsets.only(right: 2),
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: Colors.grey.shade300,
                          width: 1,
                        ), // vertical line
                      ),
                    ),
                    child: Icon(
                      Icons.mic_none_outlined,
                      color: Colors.green,
                      size: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                ),
                cursorColor: Colors.grey[800],
                cursorHeight: 18,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Text(
                textAlign: TextAlign.center,
                widget.isVegMode ? 'VEG\nMODE' : 'NON-VEG\nMODE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Transform.scale(
                scale: 0.7,
                child: Switch(
                  value: widget.isVegMode,
                  onChanged: (value) {
                    widget.toggleVegMode(value);
                  },
                  activeTrackColor: Colors.green,
                  inactiveTrackColor: Colors.red,
                  inactiveThumbColor: Colors.white,
                  trackOutlineColor: WidgetStateProperty.all<Color>(
                    Colors.transparent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
