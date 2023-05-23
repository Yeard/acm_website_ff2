import 'package:flutter/material.dart';
import '../widgets/about.dart';
import '../widgets/customScrollbarWithSingleChildScrollView.dart';
import '../widgets/executivebodys.dart';
import '../widgets/footer.dart';
import '../widgets/home_page_main_card.dart';
import '../widgets/logos.dart';
import '../widgets/mainBody1.dart';
import '../widgets/what_we_do.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/contact_us.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var dwidth = MediaQuery.of(context).size.width;
    var dheight = MediaQuery.of(context).size.height;

    ScrollController con = ScrollController();

    return Scaffold(
      body: ListView(
        physics: ScrollPhysics(),
        children: [
          //first
          Container(
            width: double.infinity,
            height: 350,
            color: Color.fromARGB(255, 163, 224, 248),
            child: MainImageCard(),
          ),
          //

          // iub acm logos
          Container(
            width: dwidth,
            height: 450,
            //  color: Color.fromARGB(255, 163, 224, 248),
            color: Color.fromARGB(255, 255, 255, 255),
            child: Logos(dwidth, dheight),
          ),
          // acm updats
          // Padding(padding: EdgeInsets.only(top: 20)),

          Container(
            color: Color.fromARGB(255, 0, 32, 45),
            /*  decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.blue,
            ),*/
            padding: EdgeInsets.only(top: 15),
            //   color: Color.fromARGB(255, 163, 224, 248),
            width: 200,
            height: 60,
            child: Text(
              'IUB ACM UPDATES',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline2,
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.white

                  // fontStyle: FontStyle.italic,
                  ),
            ),
          ),

          // IUB ACM UPDATES
          Container(
            width: dwidth + 100,
            height: dheight - (dheight - 520),
            child: CustomScrollbarWithSingleChildScrollView(
              controller: con,
              scrollDirection: Axis.horizontal,
              child: Container(
                color: Color.fromARGB(255, 0, 32, 45),
                width: dwidth,
                child: MainBody1(dwidth, dheight),
              ),
            ),
          ),
          //About
          Container(
            width: dwidth,
            height: 780,
            child: CustomScrollbarWithSingleChildScrollView(
              controller: con,
              scrollDirection: Axis.horizontal,
              child: Container(
                color: Color.fromARGB(255, 3, 19, 25),
                width: dwidth,
                child: About(dwidth, dheight),
              ),
            ),
          ),
          //

          /*Container(
            width: dwidth,
            height: dheight - 550,
            color: Colors.red,
            child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  height: 1000,
                  child: Text('tt'),
                )),
          ),*/
          //what we do
          //  Padding(padding: EdgeInsets.all(10)),
          Container(
            width: dwidth,
            height: 450,
            //  color: Color.fromARGB(255, 163, 224, 248),
            color: Color.fromARGB(255, 163, 224, 248),
            child: WhatWeDo(dwidth, dheight),
          ),
          // third
          // Padding(padding: EdgeInsets.all(10)),

          //exiquitive body

          Container(
            width: dwidth,
            //  height: 1180,
            color: Color.fromARGB(255, 167, 224, 247),
            child: ExecutiveBodys(),
          ),
          // CONTACT US
          Container(
            width: dwidth,
            height: 400,
            color: Color.fromARGB(255, 128, 214, 248),
            child: ContactUs(dwidth, dheight),
          ),

          Container(
            width: dwidth,
            // height: 300,
            color: Color.fromARGB(255, 209, 226, 243),
            child: Footer(dwidth, dheight),
          )
        ],
      ),
    );
  }
}
