import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'executivebody_card.dart';

class ExecutiveBodys extends StatelessWidget {
  const ExecutiveBodys({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 70)),
          //
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.blue,
            ),
            child: Text(
              'Executive Bodys',
              style: GoogleFonts.lato(
                color: Colors.white,
                textStyle: Theme.of(context).textTheme.headline4,
                fontSize: 25,
                fontWeight: FontWeight.w600,
                // fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 50)),
          //
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 22,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: ExecutiveBodyCard(
                    imagelink: 'images/acm_cover_photo.png',
                    name: 'Name',
                    position: 'Chair',
                  )),
              Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: ExecutiveBodyCard(
                    imagelink: 'images/acm_cover_photo.png',
                    name: 'Name',
                    position: 'VChair',
                  )),
              Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: ExecutiveBodyCard(
                    imagelink: 'images/yeardpic.jpg',
                    name: 'Md.Yeard Morshed',
                    position: 'GENERAL SECRETARY',
                  )),
            ],
          ),
          Padding(padding: EdgeInsets.all(30)),
          //
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 22,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: ExecutiveBodyCard(
                    imagelink: 'images/acm_cover_photo.png',
                    name: 'Name',
                    position: 'Chair',
                  )),
              Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: ExecutiveBodyCard(
                    imagelink: 'images/acm_cover_photo.png',
                    name: 'Name',
                    position: 'Chair',
                  )),
              Container(
                  margin: EdgeInsets.only(bottom: 15),
                  child: ExecutiveBodyCard(
                    imagelink: 'images/acm_cover_photo.png',
                    name: 'Name',
                    position: 'Chair',
                  )),
            ],
          ),
          Padding(padding: EdgeInsets.all(20)),
        ],
      ),
    );
  }
}
