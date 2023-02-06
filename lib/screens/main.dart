import 'package:flutter/material.dart';
import 'package:furniture_ecommerce_ui/screens/cart.dart';
import 'package:furniture_ecommerce_ui/screens/discover.dart';
import 'package:furniture_ecommerce_ui/screens/home.dart';
import 'package:furniture_ecommerce_ui/screens/profile.dart';
import 'package:furniture_ecommerce_ui/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static const List<dynamic> _widgetOptions = [
    ["Mall", HomePage()],
    ["Discover", DiscoverPage()],
    ["Cart", CartPage()],
    ["Profile", ProfilePage()],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          _widgetOptions[_selectedIndex][0],
          style: AppTextStyle.title,
        ),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined),
            iconSize: 30,
          ),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppTheme.activeColor,
          unselectedItemColor: AppTheme.themeColor[100],
          backgroundColor: AppTheme.themeColor[700],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              label: "Main",
              icon: Icon(Icons.home_filled),
            ),
            BottomNavigationBarItem(
              label: "Main",
              icon: Icon(Icons.explore),
            ),
            BottomNavigationBarItem(
              label: "Main",
              icon: Icon(Icons.shopping_cart),
            ),
            BottomNavigationBarItem(
              label: "Main",
              icon: Icon(Icons.person),
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
      body: _widgetOptions[_selectedIndex][1],
    );
  }
}
