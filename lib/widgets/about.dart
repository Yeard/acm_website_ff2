import 'package:flutter/material.dart';
import 'package:getwidget/components/animation/gf_animation.dart';
import 'package:getwidget/types/gf_animation_type.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  double dwidth;
  double dhight;
  About(this.dwidth, this.dhight);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.blue,
          ),
          child: Text(
            'ABOUT',
            style: GoogleFonts.lato(
              color: Colors.white,
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: 25,
              fontWeight: FontWeight.w600,
              // fontStyle: FontStyle.italic,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 18),
        ),
//
        Text(
          'IUB ACM Student Chapter is one ',
          style: GoogleFonts.lato(
            color: Colors.white,
            textStyle: Theme.of(context).textTheme.headline4,
            fontSize: 30,
            fontWeight: FontWeight.w600,
            // fontStyle: FontStyle.italic,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 15),
        ),

        //
        Text(
          'IUB ACM Student Chapter is one of the 680 chapters around',
          style: GoogleFonts.lato(
            color: Colors.white,
            textStyle: Theme.of(context).textTheme.headline4,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            // fontStyle: FontStyle.italic,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
        ),
//
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GFAnimation(
              curve: Curves.linearToEaseOut,
              duration: Duration(seconds: 3),
              alignment: Alignment.bottomLeft,
              type: GFAnimationType.scaleTransition,
              child: Container(
                width: 450,
                height: 500,
                child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image.asset('images/acm_cover_photo.png')),
              ),
            ),
            GFAnimation(
              curve: Curves.linearToEaseOut,
              duration: Duration(seconds: 3),
              alignment: Alignment.bottomRight,
              type: GFAnimationType.scaleTransition,
              child: Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                width: 750,
                height: 500,
                child: Expanded(
                  child: SelectableText(
                    textAlign: TextAlign.justify,
                    'IUB ACM Student Chapter is one of the 680 chapters around'
                    ' the world and was the first student chapter of the Association for Computing Machineries in Bangladesh.'
                    ' It was officially chartered on 17th January 2017. NSU ACM SC serves the wide scope of ACM to advance computing as a science and profession. One of the signature events of NSU ACM SC is Technovation, which contains versatile competitions for students such as Hackathon, Mobile, and App contest, Megabots Clash, Gaming contest, Robo F1, IT Business Idea Challenge, '
                    'and so on. Technovation may be considered as a spectacular congregation'
                    ' of incredibly brilliant young minds.There the signature Hackathon'
                    ' of NSU ACM SC, Hack-NSU, which is an excellent opportunity for students and tech enthusiasts alike. '
                    'It is held at North South University premises, and the program attracts students from various universities all over the country. The event is a part of ACM-SC’s goal to promote and develop fresh minds’ ideas and thoughts and give those ideas a new dimension. '
                    'It is a massive platform for those who are passionate and searching for an opportunity to showcase their ability to generate new ideas and a new vision. And they also get to take the first steps towards making their ideas and a brighter future for all of us a reality.'
                    'IUB ACM Student Chapter is one of the 680 chapters around'
                    'IUB ACM Student Chapter is one of the 680 chapters around'
                    'IUB ACM Student Chapter is one of the 680 chapters around'
                    'IUB ACM Student Chapter is one of the 680 chapters around'
                    'IUB ACM Student Chapter is one of the 680 chapters around'
                    'IUB ACM Student Chapter is one of the 680 chapters around'
                    'IUB ACM Student Chapter is one of the 680 chapters around'
                    'IUB ACM Student Chapter is one of the 680 chapters around'
                    'IUB ACM Student Chapter is one of the 680 chapters around'
                    'IUB ACM Student Chapter is one of the 680 chapters around',
                    style: GoogleFonts.abel(
                      color: Colors.white,
                      textStyle: Theme.of(context).textTheme.headline4,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      // fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            )
          ],
        )

        //
      ]),
    );
  }
}
