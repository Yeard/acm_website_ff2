import 'package:flutter/material.dart';

import 'mainevent_card.dart';

class MainBody1 extends StatelessWidget {
  double dwith;
  double dhight;
  MainBody1(this.dwith, this.dhight);

  @override
  Widget build(BuildContext context) {
    //
    //
    final List<String> mainEvents = <String>[
      'The IUB campus sprawls over 3 acres, has an amphitheater, dedicated state-of-the-art laboratories for life, environmental and social sciences, and engineering. There are 95 multimedia classrooms that are fully-equipped for both physical and online classes. The IUB campus also hosts an auditorium, a 6,000 sq-ft modern gymnasium, food court, and a spacious sports complex. There is also a dormitory for female students from outside Dhaka, foreign students and a guest-house for visiting scholars.',
      'The IUB campus sprawls over 3 acres, has an amphitheater, dedicated state-of-the-art laboratories for life, environmental and social sciences, and engineering. There are 95 multimedia classrooms that are fully-equipped for both physical and online classes. The IUB campus also hosts an auditorium, a 6,000 sq-ft modern gymnasium, food court, and a spacious sports complex. There is also a dormitory for female students from outside Dhaka, foreign students and a guest-house for visiting scholars.',
      'The IUB campus sprawls over 3 acres, has an amphitheater, dedicated state-of-the-art laboratories for life, environmental and social sciences, and engineering. There are 95 multimedia classrooms that are fully-equipped for both physical and online classes. The IUB campus also hosts an auditorium, a 6,000 sq-ft modern gymnasium, food court, and a spacious sports complex. There is also a dormitory for female students from outside Dhaka, foreign students and a guest-house for visiting scholars.',
      'The IUB campus sprawls over 3 acres, has an amphitheater, dedicated state-of-the-art laboratories for life, environmental and social sciences, and engineering. There are 95 multimedia classrooms that are fully-equipped for both physical and online classes. The IUB campus also hosts an auditorium, a 6,000 sq-ft modern gymnasium, food court, and a spacious sports complex. There is also a dormitory for female students from outside Dhaka, foreign students and a guest-house for visiting scholars.',
      'The IUB campus sprawls over 3 acres, has an amphitheater, dedicated state-of-the-art laboratories for life, environmental and social sciences, and engineering. There are 95 multimedia classrooms that are fully-equipped for both physical and online classes. The IUB campus also hosts an auditorium, a 6,000 sq-ft modern gymnasium, food court, and a spacious sports complex. There is also a dormitory for female students from outside Dhaka, foreign students and a guest-house for visiting scholars.',
      'The IUB campus sprawls over 3 acres, has an amphitheater, dedicated state-of-the-art laboratories for life, environmental and social sciences, and engineering. There are 95 multimedia classrooms that are fully-equipped for both physical and online classes. The IUB campus also hosts an auditorium, a 6,000 sq-ft modern gymnasium, food court, and a spacious sports complex. There is also a dormitory for female students from outside Dhaka, foreign students and a guest-house for visiting scholars.',
      'The IUB campus sprawls over 3 acres, has an amphitheater, dedicated state-of-the-art laboratories for life, environmental and social sciences, and engineering. There are 95 multimedia classrooms that are fully-equipped for both physical and online classes. The IUB campus also hosts an auditorium, a 6,000 sq-ft modern gymnasium, food court, and a spacious sports complex. There is also a dormitory for female students from outside Dhaka, foreign students and a guest-house for visiting scholars.'
    ];
    final List<String> images = <String>[
      'https://t4.ftcdn.net/jpg/03/08/69/75/360_F_308697506_9dsBYHXm9FwuW0qcEqimAEXUvzTwfzwe.jpg',
      'https://t4.ftcdn.net/jpg/02/53/11/77/360_F_253117715_9VPLu1KnJm8qN41H9l9hEamAWMHzcWMc.jpg',
      'https://t4.ftcdn.net/jpg/02/20/51/11/360_F_220511186_4xX1SYCzjEWT1LRhfJCkPkHhoZRFfSYZ.jpg',
      'https://t3.ftcdn.net/jpg/04/95/07/94/360_F_495079449_lyaeIerlTZN4VCcsvyqWB6kvigARppTY.jpg',
      'https://t3.ftcdn.net/jpg/02/85/82/50/360_F_285825086_HtpexwElLjEMkqzkQ3rj227eyLqqYyQf.jpg',
      'https://t3.ftcdn.net/jpg/01/61/66/18/360_F_161661879_yU8hcgsL13bhnMPU8uAlJP8lps9K0U7p.jpg',
      'https://t4.ftcdn.net/jpg/01/25/11/91/360_F_125119191_0WOSeVJHJuFgUw7cInjG6gTYHx35hxzX.jpg'
    ];
    //
    //

    return ListView.builder(
        padding: const EdgeInsets.all(8),
        scrollDirection: Axis.horizontal,
        itemCount: mainEvents.length,
        itemBuilder: (BuildContext context, int index) {
          return MainEventCard(
            name: mainEvents[index],
            image: images[index],
            dhight: dhight,
            dwith: dwith,
          );
        });
  }
}

// MainEventCard()
//'https://t4.ftcdn.net/jpg/03/08/69/75/360_F_308697506_9dsBYHXm9FwuW0qcEqimAEXUvzTwfzwe.jpg'