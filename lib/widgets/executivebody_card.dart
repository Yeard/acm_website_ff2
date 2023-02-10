import 'package:flutter/material.dart';
import 'package:getwidget/components/animation/gf_animation.dart';
import 'package:getwidget/types/gf_animation_type.dart';
import 'package:google_fonts/google_fonts.dart';

class ExecutiveBodyCard extends StatefulWidget {
  final String imagelink;
  final String name;
  final String position;
  ExecutiveBodyCard(
      {required this.imagelink, required this.name, required this.position});

  @override
  State<ExecutiveBodyCard> createState() => _ExecutiveBodyCardState();
}

class _ExecutiveBodyCardState extends State<ExecutiveBodyCard> {
  bool hovering = false;
  OnHover(bool onHover) {
    setState(() {
      hovering = onHover;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GFAnimation(
      curve: Curves.linearToEaseOut,
      duration: Duration(seconds: 3),
      alignment: Alignment.bottomLeft,
      type: GFAnimationType.scaleTransition,
      child: MouseRegion(
        onEnter: (event) => OnHover(true),
        onExit: (event) => OnHover(false),
        child: AnimatedContainer(
          constraints: BoxConstraints(
              maxHeight: double.infinity, maxWidth: double.infinity),
          // padding: hovering ? EdgeInsets.only(top: 25) : EdgeInsets.all(0),
          width: hovering ? 360.0 : 360.0,
          height: hovering ? 470.0 : 400.0,

          //  color: hovering ? Colors.red : Colors.blue,
          alignment:
              hovering ? Alignment.center : AlignmentDirectional.topCenter,
          duration: const Duration(milliseconds: 2000),
          decoration: BoxDecoration(
            color: hovering ? Colors.blue : Colors.white,
            borderRadius: hovering
                ? BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0))
                : BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0)),
            boxShadow: [
              BoxShadow(
                color:
                    hovering ? Colors.black : Color.fromARGB(135, 221, 10, 232),
                blurRadius: 3,
                offset: Offset(4, 4), // Shadow position
              ),
            ],
          ),
          curve: Curves.linearToEaseOut,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: double.infinity,
                height: 335,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: Image.asset(widget.imagelink),
                ),
              ),
              //  Padding(padding: EdgeInsets.only(top: 10)),
              //

              hovering
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          widget.name,
                          style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: hovering ? Colors.white : Colors.blue

                              // fontStyle: FontStyle.italic,
                              ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 3)),
                        Text(
                          widget.position,
                          style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.headline4,
                              fontSize: 21,
                              fontWeight: FontWeight.w700,
                              color: hovering ? Colors.white : Colors.blue

                              // fontStyle: FontStyle.italic,
                              ),
                        ),
                      ],
                    )
                  :
                  //
                  Text(
                      widget.position,
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: hovering ? Colors.white : Colors.blue

                          // fontStyle: FontStyle.italic,
                          ),
                    ),
              Padding(padding: EdgeInsets.only(top: 8)),
            ],
          ),
        ),
      ),
    );
  }
}
