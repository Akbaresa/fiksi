import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'widgets/bottom_navbar.dart';
import 'screens/auth/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fiksi App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _isRegistered = false; // Simulating registration state
  int _selectedIndex = 0;

  static const List<Widget> _screens = <Widget>[
    HomeScreen(),
    // CartScreen(),
    // OrdersScreen(),
    // ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isRegistered
        ? Scaffold(
            body: _screens[_selectedIndex],
            bottomNavigationBar: BottomNavbar(
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped,
            ),
          )
        : RegisterScreen();
  }
}
