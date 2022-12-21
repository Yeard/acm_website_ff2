import 'package:flutter/material.dart';

import './screens/home_page_screen.dart';
import './screens/admin_login_page_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        backgroundColor: Color.fromARGB(255, 125, 189, 241),
        animationDuration: Duration(milliseconds: 500),
        height: 60,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home_max_rounded),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.bookmark_add_outlined),
            label: 'About Us',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.contact_support_outlined),
            label: 'contact us',
          ),
          NavigationDestination(
            icon: Icon(Icons.login_rounded),
            label: 'Admin Login',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: const HomePage(),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const AdminLoginPage(),
        ),
      ][currentPageIndex],
    );
    //
  }
}
