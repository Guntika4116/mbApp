import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product.dart';
import 'package:flutter_application_1/widgets/product_card.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product(name: 'Macbook', price: '45,000 THB', icon: Icons.laptop),
      Product(name: 'iPhone 15', price: '35,000 THB', icon: Icons.phone_iphone),
      Product(name: 'iPad', price: '25,000 THB', icon: Icons.tablet_mac),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('My Shop')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // --- ส่วนที่ 1: Header (Banner) ---
          _buildHeader(),
          const SizedBox(height: 20),

          // --- ส่วนที่ 2: Section Title ---
          const Text(
            'New Arrivals',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          // --- ส่วนที่ 3: Product Items (Card) ---
          for (var product in products)
          ProductCard
          (name: product.name, 
          price: product.price, 
          icon: product.icon,
          ),
        ],
      ),
    );
  }
}

Widget _buildHeader() {
  return Container(
    height: 150,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.blueAccent,
      borderRadius: BorderRadius.circular(15),
    ),
    child: const Center(
      child: Text(
        'Welcome to IT Shop',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
