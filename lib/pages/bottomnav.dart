
import 'package:cartify/mainpages/cart.dart';
import 'package:cartify/mainpages/favourites.dart';

import 'package:cartify/mainpages/mainscreen.dart';
import 'package:cartify/mainpages/progilescreen.dart';
import 'package:cartify/utils/colors.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
   const MainScreen(),const Favourites(),const CartScreen(),const ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        height: 75,
        child: BottomNavigationBar(
          
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed, // Ensure consistent background color
          selectedItemColor: primaryColor,
          backgroundColor: primaryColor, // Set your desired background color here
          items: [
            BottomNavigationBarItem(
              tooltip: "home",
              icon: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Icon(
                  _currentIndex == 0 ? Icons.home : Icons.home_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Icon(size: 30,
                  _currentIndex == 1 ? Icons.favorite : Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Icon(size: 30,
                  _currentIndex == 2 ? Icons.shopping_cart : Icons.shopping_cart_outlined,
                  color: Colors.white,
                ),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Icon(size: 30,
                  _currentIndex == 3 ? Icons.person : Icons.person_2_outlined,
                  color: Colors.white,
                ),
              ),
              label: "",
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      
    );
  }
}
