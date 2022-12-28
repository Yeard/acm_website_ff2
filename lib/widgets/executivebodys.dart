import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'executivebody_card.dart';

class ExecutiveBodys extends StatelessWidget {
  const ExecutiveBodys({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.blue,
            ),
            child: Text(
              'Executive Bodys',
              style: GoogleFonts.lato(
                color: Colors.white,
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 25,
                fontWeight: FontWeight.w600,
                // fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          //
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 22,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: ExecutiveBodyCard()),
              Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: ExecutiveBodyCard()),
              Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: ExecutiveBodyCard()),
            ],
          ),
          Padding(padding: EdgeInsets.all(30)),
          //
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 22,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: ExecutiveBodyCard()),
              Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: ExecutiveBodyCard()),
              Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: ExecutiveBodyCard()),
            ],
          ),
          Padding(padding: EdgeInsets.all(20)),
        ],
      ),
    );
  }
}
