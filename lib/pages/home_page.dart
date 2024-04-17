import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nike/components/bottom_nav_bar.dart';
import 'package:nike/pages/cart_page.dart';
import 'package:nike/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavbar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      drawer: Drawer(
        backgroundColor: Color(0xff121212),
        child: Column(
          children: [
            Container(
              height: 200,
              padding: const EdgeInsets.only(top: 100),
              child: Image.asset(
                "assets/logo.png",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
