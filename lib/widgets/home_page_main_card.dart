import 'dart:ui';

import 'package:flutter/material.dart';

class MainImageCard extends StatelessWidget {
  const MainImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FittedBox(
        fit: BoxFit.fill,
        child: Image.asset('images/acm_cover_photo.png'),
      ),
    );
  }
}
