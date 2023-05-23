import 'package:acm_website_ff/widgets/about.dart';
import 'package:acm_website_ff/widgets/aboutPluss.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './screens/home_page_screen.dart';
import './screens/admin_login_page_screen.dart';
import 'widgets/contact_us.dart';
import 'widgets/footer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: NavigationExample());
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
    var dwidth = MediaQuery.of(context).size.width;
    var dheight = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        elevation: 15,
        backgroundColor: Color.fromARGB(255, 187, 183, 244),
        animationDuration: Duration(milliseconds: 1000),
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
            icon: Icon(Icons.phone_android_outlined),
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

        //About us
        Container(
          color: Color.fromARGB(255, 31, 30, 27),
          alignment: Alignment.center,
          child: SingleChildScrollView(
              child: Column(
            children: [
              About(1200, 1200),
              //
              AboutPluss(1200, 1200),

              //
            ],
          )),
        ),

        // Contact  Us
        Column(
          children: [
            Container(
              color: Colors.blue,
              alignment: Alignment.center,
              child: Container(
                width: dwidth,
                height: 500,
                color: Color.fromARGB(255, 128, 214, 248),
                child: ContactUs(dwidth, dheight),
              ),
            ),
            Container(
              width: dwidth,
              // height: 300,
              color: Color.fromARGB(255, 209, 226, 243),
              child: Footer(dwidth, dheight),
            )
          ],
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
