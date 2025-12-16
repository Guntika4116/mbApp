import 'package:flutter/material.dart';
import '../models/travel_spot.dart';
import '../widgets/travel_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final TravelSpot spot = TravelSpot(
    name: 'Grand Place',
    location: 'Bangkok, Thailand',
    imageUrl:
        'https://static.wixstatic.com/media/2cc94a_f41bf7cbf0d34a2faaf7f0e27aabb3b3~mv2.jpg',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Travel')),
      body: ListView(
        children: [
          TravelCard(spot: spot),
        ],
      ),
    );
  }
}
