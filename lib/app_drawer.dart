import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text('Shop'),
            onTap: () {
              Navigator.pushNamed(context, '/shop');
            },
          ),
          ListTile(
            title: Text('Newsstand'),
            onTap: () {
              Navigator.pushNamed(context, '/newsstand');
            },
          ),
          ListTile(
            title: Text('Who we are'),
            onTap: () {
              Navigator.pushNamed(context, '/info');
            },
          ),
          ListTile(
            title: Text('My Profile'),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          ListTile(title: Text('Basket')),
        ],
      ),
    );
  }
}
