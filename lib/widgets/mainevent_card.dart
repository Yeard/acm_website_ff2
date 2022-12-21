import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class MainEventCard extends StatelessWidget {
  String name;
  String image;
  double dwith;
  double dhight;
  MainEventCard(
      {required this.name,
      required this.image,
      required this.dhight,
      required this.dwith});
  @override
  Widget build(BuildContext context) {
    return dwith > 580
        // for Big screen
        ? Container(
            margin: EdgeInsets.all(10),
            width: 730,
            height: 600,
            child: Card(
              color: Color.fromARGB(255, 65, 131, 245),
              elevation: 8,
              shadowColor: Colors.green,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    width: 700,
                    height: 300,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.network(image),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 10),
                      width: 700,
                      height: 100,
                      //color: Color.fromARGB(255, 11, 161, 242),
                      child: Expanded(
                        child: SingleChildScrollView(
                          child: Text(
                            name,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      )),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    width: 100,
                    height: 50,
                    child: GFButton(
                      onPressed: () {},
                      text: "View more",
                      type: GFButtonType.outline,
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ),
          )
        :
        //
        // for Small screen
        Container(
            margin: EdgeInsets.all(6),
            width: 480,
            height: 500,
            child: Card(
              color: Color.fromARGB(255, 65, 131, 245),
              elevation: 8,
              shadowColor: Colors.green,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    width: 440,
                    height: 280,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.network(image),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 12),
                      width: 440,
                      height: 120,
                      //color: Colors.orange,
                      child: Expanded(
                        child: SingleChildScrollView(
                          child: Text(
                            name,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                          ),
                        ),
                      )),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    width: 100,
                    height: 50,
                    child: GFButton(
                      onPressed: () {},
                      text: "View more",
                      type: GFButtonType.outline,
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ),
          );
    //
  }
}
