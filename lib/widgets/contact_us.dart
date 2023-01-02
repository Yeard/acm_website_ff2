import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  double dwith;
  double dhight;
  ContactUs(this.dwith, this.dhight);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.white60,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.blue,
            ),
            child: Text(
              'CONTACT US',
              style: GoogleFonts.lato(
                color: Colors.white,
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 25,
                fontWeight: FontWeight.w600,
                // fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(15)),
          Container(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(),
                Card(
                  elevation: 8,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    width: 500,
                    height: 270,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.location_on_outlined,
                              color: Colors.blue,
                              size: 60,
                              /*    shadows: [
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 2,
                                  offset: Offset(2, 2), // Shadow position
                                ),
                              ], */
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(8)),
                          Container(
                            alignment: Alignment.center,
                            child: SelectableText(
                              'Our Address',
                              style: GoogleFonts.lato(
                                color: Colors.black54,
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                                // fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(5)),
                          Container(
                            alignment: Alignment.center,
                            child: SelectableText(
                              'IUB Academic Building(-01st Floor)',
                              style: GoogleFonts.lato(
                                color: Colors.black54,
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                // fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          /*
                          //
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Independent University, Bangladesh Bashundhara R/A,',
                              style: GoogleFonts.lato(
                                color: Colors.black54,
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                // fontStyle: FontStyle.italic,
                              ),
                            ),
                          ), 
                          //
                          */
                          //
                          Container(
                              alignment: Alignment.center,
                              child: SelectableText.rich(TextSpan(
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: 'Independent University,Bangladesh ',
                                    style: GoogleFonts.lato(
                                      color: Colors.blueAccent,
                                      textStyle:
                                          Theme.of(context).textTheme.headline4,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Bashundhara R/A,',
                                    style: GoogleFonts.lato(
                                      color: Colors.black54,
                                      textStyle:
                                          Theme.of(context).textTheme.headline4,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      //fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ))),
                          //
                          Container(
                            alignment: Alignment.center,
                            child: SelectableText(
                              'Dhaka-1229, Bangladesh',
                              style: GoogleFonts.lato(
                                color: Colors.black54,
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                // fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(10)),
                        ]),
                  ),
                ),
                Spacer(),
                ////////////////////////////////////////////////////////////////////////////////////////////////////////////
                Card(
                  elevation: 8,
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Container(
                    width: 500,
                    height: 270,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.email_outlined,
                              color: Colors.blue,
                              size: 60,
                              /*    shadows: [
                                BoxShadow(
                                  color: Colors.black54,
                                  blurRadius: 2,
                                  offset: Offset(2, 2), // Shadow position
                                ),
                              ], */
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(8)),
                          Container(
                            alignment: Alignment.center,
                            child: SelectableText(
                              'Email Us',
                              style: GoogleFonts.lato(
                                color: Colors.black54,
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                                // fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.all(5)),

                          /*
                          //
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Independent University, Bangladesh Bashundhara R/A,',
                              style: GoogleFonts.lato(
                                color: Colors.black54,
                                textStyle:
                                    Theme.of(context).textTheme.headline4,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                // fontStyle: FontStyle.italic,
                              ),
                            ),
                          ), 
                          //
                          */
                          //
                          Container(
                              alignment: Alignment.center,
                              child: SelectableText.rich(TextSpan(
                                children: <InlineSpan>[
                                  TextSpan(
                                    text: 'iubacm',
                                    style: GoogleFonts.lato(
                                      color: Colors.black54,
                                      textStyle:
                                          Theme.of(context).textTheme.headline4,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '@gmail',
                                    style: GoogleFonts.lato(
                                      color: Colors.black54,
                                      textStyle:
                                          Theme.of(context).textTheme.headline4,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '.com',
                                    style: GoogleFonts.lato(
                                      color: Colors.blue,
                                      textStyle:
                                          Theme.of(context).textTheme.headline4,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      //fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ))),
                          //

                          Padding(padding: EdgeInsets.all(10)),
                        ]),
                  ),
                ),
                Spacer(),
                /////////////////////////////////////////////////
              ],
            ),
          )
          //
        ],
      ),
    );
  }
}
