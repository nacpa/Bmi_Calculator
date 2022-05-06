import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class containor_Unit extends StatelessWidget {
  const containor_Unit({required this.cardChild});
  // TODO: implement
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      height: 200,
      width: 200,
      margin: EdgeInsets.all(9),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E39),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
