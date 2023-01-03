import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class Footer extends StatelessWidget {
  double dwith;
  double dhight;
  Footer(this.dwith, this.dhight);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(20),
      child: Wrap(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: WrapCrossAlignment.center,

        spacing: 50,
        children: [
          // Padding(padding: EdgeInsets.all(20)),
          //1

          Container(
            margin: EdgeInsets.only(bottom: 15),
            height: 280,
            width: 300,
            color: Colors.orange,
            child: Column(
              children: [
                Text('pp'),
                //
                GFAnimation(
                  curve: Curves.linearToEaseOut,
                  duration: Duration(seconds: 2),
                  alignment: Alignment.bottomLeft,
                  type: GFAnimationType.scaleTransition,
                  child: Image.asset(
                    'images/acm.png',
                    width: 80,
                    height: 80,
                  ),
                ),

                //
              ],
            ),
          ),

          //2
          Container(
            margin: EdgeInsets.only(bottom: 15),
            height: 280,
            width: 300,
            color: Colors.orange,
            child: Column(
              children: [Text('pp')],
            ),
          ),
          //3
          Container(
            margin: EdgeInsets.only(bottom: 15),
            height: 280,
            width: 300,
            color: Colors.orange,
            child: Column(
              children: [Text('pp')],
            ),
          ),
          //
          //  Padding(padding: EdgeInsets.all(20)),
        ],
      ),
    );
  }
}
