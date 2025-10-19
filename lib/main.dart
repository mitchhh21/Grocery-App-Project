import 'package:flutter/material.dart';
import 'package:my_grocery_app/app_drawer.dart';
import 'package:my_grocery_app/info.dart';
import 'package:my_grocery_app/newsstand.dart';
import 'package:my_grocery_app/shop.dart';
import 'package:my_grocery_app/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grocery App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 146, 117, 196),
        ),
      ),
      home: const MyHomePage(title: 'Welcome!'),
      routes: {
        '/shop': (context) => const Shop(),
        '/newsstand': (context) => const Newsstand(),
        '/info': (context) => const Info(),
        '/profile': (context) => const MyProfile(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mitch Grocery')),
      drawer: AppDrawer(),
      body: Center(),
    );
  }
}
