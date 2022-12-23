import 'package:flutter/material.dart';

import '../widgets/customScrollbarWithSingleChildScrollView.dart';
import '../widgets/home_page_main_card.dart';
import '../widgets/logos.dart';
import '../widgets/mainBody1.dart';
import '../widgets/what_we_do.dart';
import '../widgets/what_we_do_card.dart';

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
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //first
              Container(
                width: double.infinity,
                height: 250,
                color: Color.fromARGB(255, 245, 0, 0),
                child: MainImageCard(),
              ),
              //
              Container(
                width: dwidth,
                height: 450,
                color: Color.fromARGB(255, 163, 224, 248),
                child: Logos(dwidth, dheight),
              ),

              // second
              Container(
                width: dwidth + 100,
                height: dheight - (dheight - 520),
                child: CustomScrollbarWithSingleChildScrollView(
                    controller: con,
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      color: Colors.white,
                      width: dwidth,
                      child: MainBody1(dwidth, dheight),
                    )),
              ),

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
              Padding(padding: EdgeInsets.all(10)),

              Container(
                width: dwidth,
                height: 500,
                color: Color.fromARGB(255, 89, 199, 243),
                child: WhatWeDo(dwidth, dheight),
              ),
              // third
              Padding(padding: EdgeInsets.all(10)),

              Container(
                width: dwidth,
                height: 700,
                color: Color.fromARGB(255, 7, 121, 236),
                child: Text('tt'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
