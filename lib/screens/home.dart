import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String route = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopper'),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.notifications_outlined),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search Product Name',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text('Featured Product'),
            SizedBox(
              width: 156,
              child: Card(
                margin: EdgeInsets.zero,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://dummyimage.com/200x200/ff00ff/fff',
                        height: 120,
                        width: 120,
                      ),
                      const Text('Title'), // title
                      const Text('0.00'), // price
                      const Row(
                        children: [
                          Icon(Icons.star),
                          Text('0'),
                          Text('0'),
                          Text('Reviews'),
                          Icon(Icons.more_vert_outlined)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
