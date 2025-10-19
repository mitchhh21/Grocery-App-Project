import 'package:flutter/material.dart';
import 'package:my_grocery_app/app_drawer.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class Product {
  final String name;
  final String price;
  final String vendor;
  final String image;

  Product({
    required this.name,
    required this.price,
    required this.vendor,
    required this.image,
  });
}

class _ShopState extends State<Shop> {
  final List<Product> products = [
    Product(
      name: 'Shiro Miso (Fermented Soybean Paste)',
      price: '\$5.50',
      vendor: 'Miko Brand',
      image: 'assets/images/miso.jpg',
    ),
    Product(
      name: 'Sake (Rice Wine)',
      price: '\$15.00',
      vendor: 'Sakura Imports',
      image: 'assets/images/sake.jpg',
    ),
    Product(
      name: 'Wan Ja Shan Mirin (Sweet Cooking Rice Wine)',
      price: '\$6.50',
      vendor: 'Wan Ja Shan',
      image: 'assets/images/mirin.jpg',
    ),
    Product(
      name: 'Yamasa Dashi Soup Stock',
      price: '\$4.00',
      vendor: 'Yamasa',
      image: 'assets/images/dashi.jpg',
    ),
    Product(
      name: 'Tonkatsu Sauce',
      price: '\$3.50',
      vendor: 'Otafuku',
      image: 'assets/images/tonkatsu.jpg',
    ),
    Product(
      name: 'Soba Noodles',
      price: '\$2.50',
      vendor: 'Hokkaido Foods',
      image: 'assets/images/soba.jpg',
    ),
    Product(
      name: 'Ramen Noodles',
      price: '\$2.00',
      vendor: 'Nissin',
      image: 'assets/images/ramen.jpg',
    ),
    Product(
      name: 'Wasabi',
      price: '\$1.50',
      vendor: 'Sakura Imports',
      image: 'assets/images/wasabi.jpg',
    ),
    Product(
      name: 'Curry Roux',
      price: '\$4.50',
      vendor: 'S&B',
      image: 'assets/images/curry.jpg',
    ),
    Product(
      name: 'Nori Seaweed',
      price: '\$3.00',
      vendor: 'Nori Co.',
      image: 'assets/images/nori.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mitch Grocery'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
        ],
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'Products',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      ElevatedButton(onPressed: () {}, child: Text('Default')),
                      SizedBox(width: 10),
                      ElevatedButton(onPressed: () {}, child: Text('A-Z')),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.grey,
                          spreadRadius: 0.5,
                        ),
                      ],
                    ),
                    child: ListTile(
                      title: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: NetworkImage(product.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  product.price,
                                  style: TextStyle(color: Colors.green),
                                ),
                                Text(product.vendor),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite_border),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
