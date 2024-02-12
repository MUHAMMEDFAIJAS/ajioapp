import 'package:ajioapp_1/screens/home.dart';
import 'package:ajioapp_1/screens/screenaccounts.dart';
import 'package:ajioapp_1/screens/wishlist.dart';
import 'package:ajioapp_1/screens/screenbag.dart';

import 'package:ajioapp_1/screens/screenstores.dart';

import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
 List  screens = [
    const ScreenHome(),
    const ScreenStores(),
    const ScreenAccounts(),
     const WishList(),
    const ScreenBag(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        elevation: 0,
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.storefront_sharp), label: 'Store'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Wishlist'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: 'Bag'),
        ],
      ),
    );
  }
}
