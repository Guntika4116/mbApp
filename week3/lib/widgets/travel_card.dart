import 'package:flutter/material.dart';
import '../models/travel_spot.dart';

class TravelCard extends StatelessWidget {
  final TravelSpot spot;

  const TravelCard({super.key, required this.spot});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            spot.imageUrl,
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          ListTile(
            title: Text(
              spot.name,
              style: const TextStyle(fontWeight: FontWeight.bold , fontSize: 20),
            ),
            subtitle: Text(spot.location),
            trailing: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }
}
