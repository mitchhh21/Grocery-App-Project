import 'package:flutter/material.dart';
import 'package:my_grocery_app/app_drawer.dart';

class Newsstand extends StatefulWidget {
  const Newsstand({super.key});

  @override
  State<Newsstand> createState() => _NewsstandState();
}

class _NewsstandState extends State<Newsstand> {
  final List<Map<String, String>> newsItems = [
    {
      'title': 'Fashion Weekly',
      'type': 'Magazine',
      'image': 'assets/images/fashion_mag.jpg',
    },
    {
      'title': 'Daily Times',
      'type': 'Newspaper',
      'image': 'assets/images/daily_times.jpg',
    },
    {
      'title': 'Tech Today',
      'type': 'Magazine',
      'image': 'assets/images/tech_today.jpg',
    },
    {
      'title': 'Superhero Comics',
      'type': 'Comics',
      'image': 'assets/images/superhero_comics.jpg',
    },
    {
      'title': 'Cooking Daily',
      'type': 'Magazine',
      'image': 'assets/images/cooking_daily.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Grocery Newsstand'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
        ],
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with Back Button
            Row(
              children: [
                Text(
                  'Newsstand',
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
            SizedBox(height: 10),

            // Search bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Search magazines, newspapers...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            SizedBox(height: 15),

            // Categories
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCategoryChip('Magazines'),
                  _buildCategoryChip('Newspapers'),
                  _buildCategoryChip('Comics'),
                  _buildCategoryChip('Special Editions'),
                ],
              ),
            ),
            SizedBox(height: 15),

            // News Items
            Expanded(
              child: ListView.builder(
                itemCount: newsItems.length,
                itemBuilder: (context, index) {
                  final item = newsItems[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      leading: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image: AssetImage(item['image']!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(
                        item['title']!,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        item['type']!,
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // Optionally open news details
                      },
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

  Widget _buildCategoryChip(String label) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Chip(
        label: Text(label),
        backgroundColor: Colors.orangeAccent[100],
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
