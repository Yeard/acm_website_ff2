import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class MainImageCard extends StatelessWidget {
  const MainImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage('images/p.png'),
          colorFilter: ColorFilter.mode(
            Color.fromARGB(153, 100, 95, 95).withOpacity(0.8),
            BlendMode.modulate,
          ),
          fit: BoxFit.cover,
        ),
      ),
      //   color: Colors.white60,
      child: Container(
        padding: EdgeInsets.only(top: 80, left: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //
            Container(
              alignment: Alignment.centerLeft,
              child: AnimatedTextKit(
                displayFullTextOnTap: true,
                repeatForever: true,
                animatedTexts: [
                  WavyAnimatedText(
                    speed: const Duration(milliseconds: 500),
                    'IUB ACM STUDENT CHAPTER',
                    textStyle: const TextStyle(
                      // decoration: TextDecoration.lineThrough,

                      fontSize: 60.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 16, 144, 248),
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(20)),

            //
            Container(
              alignment: Alignment.topLeft,
              height: 45,
              child: Text(
                'JOIN US :',
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 42,
                  fontWeight: FontWeight.w600,
                  color: Colors.deepOrange,
                  // fontStyle: FontStyle.italic,
                ),
              ),
            ),
            //
            Padding(padding: EdgeInsets.only(bottom: 10)),
            Container(
              //  color: Colors.red,
              height: 60,
              child: Row(
                children: [
                  Container(
                    height: 50,
                    // color: Colors.yellow,
                    child: Text(
                      'WE ARE : ',
                      style: GoogleFonts.lato(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 34,
                        fontWeight: FontWeight.w600,
                        // fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
//
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 200,
                    //  color: Colors.green,
                    child: AnimatedTextKit(
                      displayFullTextOnTap: true,
                      repeatForever: true,
                      //
                      animatedTexts: [
                        /*
                        FadeAnimatedText(
                          duration: const Duration(milliseconds: 5000),
                          'JOIN US',
                          textStyle: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                          ),
                        ),
                        FadeAnimatedText(
                          duration: const Duration(milliseconds: 2000),
                          'We Are',
                          textStyle: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ), 
                        */
                        ScaleAnimatedText(
                          duration: const Duration(milliseconds: 4000),
                          'CREATIVE',
                          textStyle: TextStyle(
                            fontSize: 45.0,
                            fontFamily: 'Canterbury',
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        ScaleAnimatedText(
                          duration: const Duration(milliseconds: 4000),
                          'INNOVATIVE',
                          textStyle: TextStyle(
                            fontSize: 45.0,
                            fontFamily: 'Canterbury',
                            color: Colors.blue,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
//
                ],
              ),
            ),
            //
            //
            //
            /*   Container(
              height: 200,
              child: AnimatedTextKit(
                displayFullTextOnTap: true,
                repeatForever: true,
                //
                animatedTexts: [
                  FadeAnimatedText(
                    duration: const Duration(milliseconds: 5000),
                    'JOIN US',
                    textStyle: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                  FadeAnimatedText(
                    duration: const Duration(milliseconds: 2000),
                    'We Are',
                    textStyle: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  ScaleAnimatedText(
                    duration: const Duration(milliseconds: 4000),
                    'Creative',
                    textStyle: TextStyle(
                        fontSize: 50.0,
                        fontFamily: 'Canterbury',
                        color: Colors.blue),
                  ),
                  ScaleAnimatedText(
                    duration: const Duration(milliseconds: 4000),
                    'Enovetive',
                    textStyle: TextStyle(
                        fontSize: 50.0,
                        fontFamily: 'Canterbury',
                        color: Colors.blue),
                  ),
                ],
              ),
            ), */
          ],
        ),
      ),
    );
  }
}
