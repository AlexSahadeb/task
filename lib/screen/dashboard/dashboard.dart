import 'package:agricos/global/app_colors.dart';
import 'package:agricos/screen/dashboard/home_screen.dart';
import 'package:agricos/screen/dashboard/profile_screen.dart';
import 'package:agricos/screen/dashboard/search_screen.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  List<Widget> screenList =const [
    HomeScreen(),
    SearchScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.getGreenColor(context),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
           label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
           label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
           label: ""
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
