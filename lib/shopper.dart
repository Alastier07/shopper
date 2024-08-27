import 'package:flutter/material.dart';

import 'screens/home.dart';

class ShopperApp extends StatelessWidget {
  const ShopperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Shopper',
      home: HomeScreen(),
    );
  }
}
