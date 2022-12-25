import 'package:acm_website_ff/widgets/what_we_do_card.dart';

import 'package:flutter/material.dart';

import 'logos_card.dart';

class Logos extends StatelessWidget {
  double dwith;
  double dhight;
  Logos(this.dwith, this.dhight);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 500,
      child: Card(
        color: Color.fromARGB(255, 163, 224, 248),
        elevation: 22,
        child: Row(
          children: [
            Spacer(),
            LogosCard(heding: 'IUB', discrection: 'images/IUB.png'),
            Spacer(),
            LogosCard(heding: 'ACM', discrection: 'images/acm.png'),
            Spacer(),
            LogosCard(heding: 'CSE', discrection: 'images/cse.png'),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
