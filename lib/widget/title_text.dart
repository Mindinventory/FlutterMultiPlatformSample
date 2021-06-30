import 'package:flutter/material.dart';

import '../utils/color_utils.dart';
import '../utils/dimens.dart';

class TitleText extends StatelessWidget {
  final String label;
  final int maxLine;
final FontWeight fontWeight;
  TitleText({this.label, this.maxLine = 1, this.fontWeight=fontWeightSemiBold});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        label,
        maxLines: maxLine,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: subtitleTextColor,
          fontSize: fontMedium,
          fontWeight: fontWeight,
          letterSpacing: 0.28,
        ),
      ),
    );
  }
}
