import 'package:flutter/material.dart';

import '../widgets/customScrollbarWithSingleChildScrollView.dart';
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
                width: 5000,
                height: dheight - (dheight - 102),
                color: Color.fromARGB(255, 204, 243, 154),
                child: CustomScrollbarWithSingleChildScrollView(
                    controller: con,
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      height: 3000,
                      child: Text(
                          'ttrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr66666666666666666666666666666666666666666666666666666666666677777777777777777777777777777777777777777777777777777777777799999999999999999999999999999999999999999999999999999999999999999999990000000000000000000000000000000000000000000'),
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
