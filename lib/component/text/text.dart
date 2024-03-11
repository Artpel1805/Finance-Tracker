import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saving_goal/component/colors.dart';

class FGTText extends Text {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlignement;
  FGTText(this.text,
      {this.color = FGTColors.white,
      this.fontSize = 16.0,
      this.fontWeight = FontWeight.normal,
      this.textAlignement = TextAlign.start,
      super.key})
      : super(text,
            textAlign: textAlignement,
            style: TextStyle(
                color: color,
                fontFamily: 'Poppins',
                fontWeight: fontWeight,
                fontSize: fontSize));
}
