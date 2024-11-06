// screens/main_screen.dart
import 'package:flutter/material.dart';
import 'package:responsi/core/constants/colors.dart';
import 'package:responsi/routes/routes_name.dart';
import 'package:responsi/screens/account/account_screen.dart';
import 'package:responsi/screens/home/home_screen.dart';
import 'package:responsi/screens/profile/profile_screen.dart';

class MainScreen extends StatefulWidget {
  final int selectedIndex;
  
  const MainScreen({super.key, this.selectedIndex = 0});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  late int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex;
  }

  final List<Widget> _pages = [
    const HomeScreen(),
    const AccountScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    if (index == 2) {
      Navigator.pushReplacementNamed(context, RouteNames.login);
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Akun',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: 'Logout',
          ),
        ],
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
