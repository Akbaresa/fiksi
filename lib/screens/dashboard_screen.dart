import 'package:fiksi/screens/komunitas_screen.dart';
import 'package:fiksi/screens/list_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_navbar.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.access_time),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          const CircleAvatar(
            child: Icon(Icons.person),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Halo,',
                style: TextStyle(fontSize: 24),
              ),
              const Text(
                'Maulana Akbar',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.sentiment_very_satisfied, size: 40),
                  Icon(Icons.sentiment_satisfied, size: 40),
                  Icon(Icons.sentiment_neutral, size: 40),
                  Icon(Icons.sentiment_dissatisfied, size: 40),
                  Icon(Icons.sentiment_very_dissatisfied, size: 40),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 200,
                child: PageView(
                  children: [
                    Image.network('https://picsum.photos/401/200'),
                    Image.network('https://picsum.photos/402/200'),
                    Image.network('https://picsum.photos/403/200'),
                  ],
                ),
              ),
              const SizedBox(height: 16),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListScreen()),
                      );
                    },
                    child: Icon(Icons.home, size: 40),
                  ),
                  Icon(Icons.school, size: 40),
                  Icon(Icons.settings, size: 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => KomunitasScreen()),
                      );
                    },
                    child: Icon(Icons.business, size: 40),
                  ),
                ],
              ),
              const SizedBox(height: 16), // This adds the margin
              const Text(
                'Racikan Bantuan Untuk Hari ini ,',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.network('https://picsum.photos/400/200'),
                    Image.network('https://picsum.photos/401/200'),
                    Image.network('https://picsum.photos/402/200'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavbar(
        selectedIndex: 0, // Adjust this based on the selected index logic
        onItemTapped: (index) {
          // Handle navigation logic here
        },
      ),
    );
  }
}
