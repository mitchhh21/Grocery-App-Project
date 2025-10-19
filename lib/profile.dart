import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Profile"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 201, 133, 195),
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Profile Picture
              Center(
                child: Stack(
                  children: [
                    const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/profile.jpg'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(padding: const EdgeInsets.all(6)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // User Info
              const Text(
                "Alexa Exaure",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),

              // Info Cards
              buildInfoCard("Email", "alexa@example.com"),
              buildInfoCard("Phone", "+63 912 345 6789"),
              buildInfoCard("Address", "Cabadbaran, Philippines"),
              const SizedBox(height: 20),

              // Edit Button
              SizedBox(height: 30),
              ElevatedButton(onPressed: () {}, child: Text('Edit Profile')),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildInfoCard(String title, String value) {
  return Card(
    margin: const EdgeInsets.symmetric(vertical: 8),
    child: ListTile(title: Text(title), subtitle: Text(value)),
  );
}
