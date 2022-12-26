import 'package:acm_website_ff/widgets/what_we_do_card.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhatWeDo extends StatelessWidget {
  double dwith;
  double dhight;
  WhatWeDo(this.dwith, this.dhight);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            //  color: Color.fromARGB(255, 163, 224, 248),
            width: 500,
            height: 60,
            child: Text(
              'WHAT WE DO',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline2,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.blue

                  // fontStyle: FontStyle.italic,
                  ),
            ),
          ),
          //
          Row(
            children: [
              Spacer(),
              WhatWeDoCard(
                  heding: 'helo 1',
                  discrection:
                      " The IUB campus sprawls over 3 acres, has an amphitheater, dedicated state-of-the-art laboratories for life, environmental and social sciences, and engineering. There are 95 multimedia classrooms that are fully-equipped for both physical and online classes. The IUB campus also hosts an auditorium,"),
              Spacer(),
              WhatWeDoCard(
                  heding: 'Helo 2',
                  discrection:
                      ' The Greatest Show on Earth is just one game away to get ended. Throughout the month of World Cup fever, we have seen a lot of ups and downs, the so called giant teams got defeated against the statistically less privileged teams. But after all the upsets and our supported pre-winner countries.'),
              Spacer(),
              WhatWeDoCard(heding: 'Helo 3', discrection: " helo helo helo"),
              Spacer(),
              WhatWeDoCard(heding: 'Helo 4', discrection: " helo helo helo"),
              Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}