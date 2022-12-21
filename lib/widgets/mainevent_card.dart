import 'package:flutter/material.dart';

class MainEventCard extends StatelessWidget {
  String name;
  MainEventCard({required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 600,
      color: Color.fromARGB(255, 11, 236, 157),
      child: Text(name),
    );
  }
}
