import 'package:flutter/material.dart';

import '../utils/color_utils.dart';
import '../utils/dimens.dart';

class HintText extends StatelessWidget {
  final String label;
  final int maxLine;
  final double fontSize;

  HintText({this.label, this.maxLine = 1, this.fontSize = fontXSmall});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        label,
        maxLines: maxLine,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: hintTextColor, fontFamily: 'AvertaSemibold', fontSize: fontSize, fontWeight: fontWeightSemiBold, letterSpacing: 0.28, height: 1.5),
      ),
    );
  }
}
