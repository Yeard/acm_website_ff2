import 'package:flutter/material.dart';

import '../widgets/customScrollbarWithSingleChildScrollView.dart';
import '../widgets/mainBody1.dart';
import '../widgets/mainevent_card.dart';

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
    //final List<String> entries = <String>[    'A',      'B',      'C',    ];
    ScrollController con = ScrollController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black38,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: dwidth + 100,
                height: dheight - (dheight - 102),
                child: CustomScrollbarWithSingleChildScrollView(
                    controller: con,
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      color: Color.fromARGB(66, 246, 242, 242),
                      width: dwidth,
                      child: MainBody1(dwidth),
                    )),
              ),

              //

              Container(
                width: dwidth,
                height: dheight - 102,
                color: Colors.red,
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      height: 3000,
                      child: Text('tt'),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
