import 'package:flutter/material.dart';
import 'package:zomato_app/components/filter_card.dart';

class FilterList extends StatefulWidget {
  const FilterList({super.key});

  @override
  State<FilterList> createState() => _FilterListState();
}

class _FilterListState extends State<FilterList> {
  final List<Object?> filters = [
    {
      'prefixIcon': Icon(Icons.filter, size: 12),
      'label': 'Filters',
      'suffixIcon': Icon(Icons.arrow_drop_down, size: 12),
      'isSelected': true,
    },
    {
      'prefixIcon': null,
      'label': 'Top Rated',
      'suffixIcon': null,
      'isSelected': false,
    },
    {
      'prefixIcon': null,
      'label': 'Under ₹200',
      'suffixIcon': null,
      'isSelected': false,
    },
    {
      'prefixIcon': null,
      'label': 'Cost Low to High',
      'suffixIcon': null,
      'isSelected': false,
    },
    {
      'prefixIcon': null,
      'label': 'Cost High to Low',
      'suffixIcon': null,
      'isSelected': false,
    },
    {
      'prefixIcon': null,
      'label': 'Newest First',
      'suffixIcon': null,
      'isSelected': false,
    },
    {
      'prefixIcon': Icon(Icons.schedule, size: 12),
      'label': 'Schedule',
      'suffixIcon': Icon(Icons.arrow_drop_down, size: 12),
      'isSelected': false,
    },
    {
      'prefixIcon': null,
      'label': 'Veg',
      'suffixIcon': null,
      'isSelected': false,
    },
    {
      'prefixIcon': null,
      'label': 'Non-Veg',
      'suffixIcon': null,
      'isSelected': false,
    },
    {
      'prefixIcon': null,
      'label': 'Open Now',
      'suffixIcon': null,
      'isSelected': false,
    },
    {
      'prefixIcon': null,
      'label': 'Rating 4.0+',
      'suffixIcon': null,
      'isSelected': false,
    },
    {
      'prefixIcon': null,
      'label': 'Rating 3.0+',
      'suffixIcon': null,
      'isSelected': false,
    },
    {
      'prefixIcon': null,
      'label': 'Rating 2.0+',
      'suffixIcon': null,
      'isSelected': false,
    },
    {
      'prefixIcon': null,
      'label': 'Rating 1.0+',
      'suffixIcon': null,
      'isSelected': false,
    },
    {
      'prefixIcon': null,
      'label': 'Dine-in',
      'suffixIcon': null,
      'isSelected': false,
    },
    {
      'prefixIcon': null,
      'label': 'Delivery',
      'suffixIcon': null,
      'isSelected': false,
    },
    {
      'prefixIcon': null,
      'label': 'Takeaway',
      'suffixIcon': null,
      'isSelected': false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filters.length,
        itemBuilder: (context, index) {
          final filter = filters[index];
          if (filter is Map<String, dynamic>) {
            return FilterCard(
              leading: filter['prefixIcon'] != null
                  ? filter['prefixIcon'] as Widget?
                  : null,
              title: filter['label'] as String,
              trailing: filter['suffixIcon'] != null
                  ? filter['suffixIcon'] as Widget?
                  : null,
              onTap: () {
                // Handle filter tap
                setState(() {
                  for (var f in filters) {
                    if (f is Map<String, dynamic>) {
                      f['isSelected'] = false; // Deselect all
                    }
                  }
                  filter['isSelected'] = true; // Select the tapped one
                });
              },
              isSelected: filter['isSelected'],
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
