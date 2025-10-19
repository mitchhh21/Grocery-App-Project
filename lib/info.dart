import 'package:flutter/material.dart';
import 'package:my_grocery_app/app_drawer.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Grocery'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
        ],
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Who We Are',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('< Back>', style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            Text(
              'Welcome to Mitch Grocery! We are your trusted neighborhood japanese grocery store dedicated to bringing you the freshest products, quality groceries, and a seamless shopping experience. Our goal is to make every shopping trip enjoyable and convenient.',
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            SizedBox(height: 20),

            _buildInfoCard(
              title: 'Our Mission',
              content:
                  'To provide high-quality groceries and exceptional service to our community, while embracing sustainability and innovation.',
              icon: Icons.flag,
              color: Colors.orangeAccent,
            ),
            SizedBox(height: 15),

            _buildInfoCard(
              title: 'Our Vision',
              content:
                  'To become the leading neighborhood grocery brand that customers trust and love, offering convenience, freshness, and variety.',
              icon: Icons.visibility,
              color: Colors.lightGreen,
            ),
            SizedBox(height: 15),

            _buildInfoCard(
              title: 'Our Values',
              content:
                  'Integrity, Quality, Customer Satisfaction, Innovation, and Sustainability are the core principles that guide our work every day.',
              icon: Icons.star,
              color: Colors.blueAccent,
            ),
            SizedBox(height: 20),

            Text(
              'Contact Us:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('📧 Email: support@mygrocery.com'),
            Text('📞 Phone: +1 234 567 890'),
            Text('🏠 Address: 123 Grocery Street, My City'),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required String title,
    required String content,
    required IconData icon,
    required Color color,
  }) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 40, color: color),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(content, style: TextStyle(fontSize: 15, height: 1.5)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
