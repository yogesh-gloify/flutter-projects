import 'package:flutter/material.dart';
import 'package:zomato_app/components/service_card.dart';

class ServiceList extends StatefulWidget {
  const ServiceList({super.key});

  @override
  State<ServiceList> createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  final List<Map<String, String>> services = [
    {'title': 'Offers', 'imageUrl': 'lib/assets/service_offers.png'},
    {'title': 'Results Out!', 'imageUrl': 'lib/assets/service_results_out.png'},
    {'title': 'Food on train', 'imageUrl': 'lib/assets/service_food_on_train.png'},
    {'title': 'Gift cards', 'imageUrl': 'lib/assets/service_gift_cards.png'},
    {'title': 'Delivery', 'imageUrl': 'lib/assets/service_delivery.png'},
    {'title': 'Takeaway', 'imageUrl': 'lib/assets/service_takeaway.png'},
    {'title': 'Dining Out', 'imageUrl': 'lib/assets/service_dining_out.png'},
    {'title': 'Nightlife', 'imageUrl': 'lib/assets/service_nightlife.png'},
    {
      'title': 'Online Ordering',
      'imageUrl': 'lib/assets/service_online_ordering.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: services.length,
        itemBuilder: (context, index) {
          // return ServiceCard(
          //   title: services[index]['title'] ?? '',
          //   imageUrl: services[index]['imageUrl'] ?? '',
          // );
        },
      ),
    );
  }
}
