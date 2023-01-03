import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WhatWeDoCard extends StatefulWidget {
  String heding;
  String discrection;
  WhatWeDoCard({required this.heding, required this.discrection});

  @override
  State<WhatWeDoCard> createState() => _WhatWeDoCardState();
}

class _WhatWeDoCardState extends State<WhatWeDoCard> {
  bool hovering = false;
  OnHover(bool onHover) {
    setState(() {
      hovering = onHover;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => OnHover(true),
      onExit: (event) => OnHover(false),
      child: AnimatedContainer(
        //  width: hovering ? 350.0 : 270.0,
        // height: hovering ? 270.0 : 350.0,
        width: hovering ? 350.0 : 350.0,
        height: hovering ? 270.0 : 270.0,

        //  color: hovering ? Colors.red : Colors.blue,
        alignment: hovering ? Alignment.center : AlignmentDirectional.topCenter,
        duration: const Duration(milliseconds: 2000),
        decoration: BoxDecoration(
          color: hovering ? Colors.blue : Colors.white,
          borderRadius:
              hovering ? BorderRadius.circular(40) : BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: hovering ? Colors.black : Color.fromARGB(134, 21, 16, 22),
              blurRadius: 3,
              offset: Offset(4, 4), // Shadow position
            ),
          ],
        ),
        curve: Curves.linearToEaseOut,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 10)),
            Text(
              widget.heding,
              style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: hovering ? Colors.white : Colors.blue

                  // fontStyle: FontStyle.italic,
                  ),
            ),
            Padding(padding: EdgeInsets.only(top: 8)),
            Container(
              padding: EdgeInsets.only(left: 11, right: 11, bottom: 11),
              child: Text(
                textAlign: TextAlign.justify,
                widget.discrection,
                style: GoogleFonts.aBeeZee(
                    textStyle: Theme.of(context).textTheme.headline1,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: hovering ? Colors.white : Colors.black87
                    // fontStyle: FontStyle.italic,
                    ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
