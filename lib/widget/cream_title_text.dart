import 'package:flutter/material.dart';

import '../utils/color_utils.dart';
import '../utils/dimens.dart';

class CreamTitleText extends StatelessWidget {
  final String label;
  final int maxLine;

  CreamTitleText({this.label, this.maxLine = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        label,
        maxLines: maxLine,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: creamTitleTextColor,
          fontSize: fontLarger,
          fontWeight: fontWeightSemiBold,
          letterSpacing: 0.28,
        ),
      ),
    );
  }
}
