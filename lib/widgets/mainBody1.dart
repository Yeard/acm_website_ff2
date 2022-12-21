import 'package:flutter/material.dart';

import 'mainevent_card.dart';

class MainBody1 extends StatelessWidget {
  double dwith;
  MainBody1(this.dwith);

  @override
  Widget build(BuildContext context) {
    final List<String> mainEvents = <String>[
      'A',
      'B',
      'io',
      'u',
      'B',
      'io',
      'u'
    ];
    final List<int> colorCodes = <int>[600, 500, 88, 100, 88, 100, 100];
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        scrollDirection: Axis.horizontal,
        itemCount: mainEvents.length,
        itemBuilder: (BuildContext context, int index) {
          return MainEventCard(
            name: mainEvents[index],
          );
        });
  }
}

// MainEventCard()