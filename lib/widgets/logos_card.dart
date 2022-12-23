import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LogosCard extends StatefulWidget {
  String heding;
  String discrection;
  LogosCard({required this.heding, required this.discrection});

  @override
  State<LogosCard> createState() => _LogosCardState();
}

class _LogosCardState extends State<LogosCard> {
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
        width: hovering ? 340.0 : 260.0,
        height: hovering ? 270.0 : 340.0,
        //  color: hovering ? Colors.red : Colors.blue,
        alignment: hovering ? Alignment.center : AlignmentDirectional.topCenter,
        duration: const Duration(seconds: 2),
        decoration: BoxDecoration(
          color: hovering ? Colors.blue : Colors.white,
          borderRadius:
              hovering ? BorderRadius.circular(20) : BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: hovering ? Colors.black : Colors.black54,
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
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: hovering ? Colors.white : Colors.blue

                  // fontStyle: FontStyle.italic,
                  ),
            ),
            Padding(padding: EdgeInsets.only(top: 8)),
            Container(
                width: 250,
                height: 210,
                child: FittedBox(
                    fit: BoxFit.fill, child: Image.asset(widget.discrection))),
          ],
        ),
      ),
    );
  }
}
