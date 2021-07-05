import 'package:flutter/material.dart';

import '../utils/color_utils.dart';
import '../utils/dimens.dart';

class TitleText extends StatelessWidget {
  final String label;
  final int maxLine;
  final FontWeight fontWeight;
  final double fontSize;
  final Color fontColor;

  TitleText({this.label, this.maxLine = 1, this.fontWeight = fontWeightSemiBold, this.fontSize = fontMedium, this.fontColor = subtitleTextColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        label,
        maxLines: maxLine,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontFamily: 'AvertaSemibold',
          color: fontColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
          letterSpacing: 0.28,
        ),
      ),
    );
  }
}
