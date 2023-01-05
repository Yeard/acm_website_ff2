import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';

class Footer extends StatelessWidget {
  double dwith;
  double dhight;
  Footer(this.dwith, this.dhight);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 180,
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 15.0, // soften the shadow
            spreadRadius: 4.0, //extend the shadow
            offset: Offset(
              5.0, // Move to right 5  horizontally
              5.0, // Move to bottom 5 Vertically
            ),
          )
        ],
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: WrapCrossAlignment.center,

        children: [
          // Padding(padding: EdgeInsets.all(20)),
          //1
          Spacer(),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            height: 280,
            width: 300,
            // color: Color.fromARGB(255, 254, 254, 254),
            child: Column(
              children: [
                Text(
                  'IUB ACM STUDENT CS',
                  style: GoogleFonts.lato(
                    color: Colors.blue,
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    // fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'IUB ACM SC',
                  style: GoogleFonts.lato(
                    color: Colors.black54,
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    // fontStyle: FontStyle.italic,
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: Image.asset('images/acm.png'),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),

          //2
          Container(
            margin: EdgeInsets.only(bottom: 15),
            height: 280,
            width: 300,
            //  color: Colors.orange,
            child: Column(
              children: [
                Text(
                  'Our Social Networks',
                  style: GoogleFonts.lato(
                    color: Colors.blue,
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    // fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Our Social Networks',
                  style: GoogleFonts.lato(
                    color: Colors.black54,
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    // fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: GFIconButton(
                          onPressed: () {},
                          icon: Icon(Icons.facebook),
                        ),
                      ),
                      //
                      Container(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: GFIconButton(
                          //color: Colors.white,
                          onPressed: () {},
                          icon: Ink.image(
                            image: const NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Github-circle_%28CoreUI_Icons_v1.0.0%29.svg/2048px-Github-circle_%28CoreUI_Icons_v1.0.0%29.svg.png'),
                          ),
                        ),
                      ),

                      //
                      Container(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        child: GFIconButton(
                          //color: Colors.white,

                          onPressed: () {},
                          icon: Ink.image(
                            image: const NetworkImage(
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/LinkedIn_icon.svg/2048px-LinkedIn_icon.svg.png'),
                          ),
                        ),
                      ),
                      //
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          //3
          Container(
            margin: EdgeInsets.only(bottom: 15),
            height: 280,
            width: 350,
            //  color: Colors.orange,
            child: Column(
              children: [
                Text(
                  'DEVELOPER INFO ',
                  style: GoogleFonts.lato(
                    color: Colors.blue,
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    // fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Name: Md.Yeard Morshed',
                  style: GoogleFonts.lato(
                    color: Colors.black54,
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    // fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SelectableText(
                  'Email: yeardmorshed1999@gmail.com',
                  style: GoogleFonts.lato(
                    color: Colors.black54,
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    // fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          //
          //  Padding(padding: EdgeInsets.all(20)),
        ],
      ),
    );
  }
}
