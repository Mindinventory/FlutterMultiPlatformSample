import 'package:flutter/material.dart';

import '../utils/color_utils.dart';
import '../utils/dimens.dart';

class CreamSmallText extends StatelessWidget {
  final String label;
  final int maxLine;

  CreamSmallText({this.label, this.maxLine = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        label,
        maxLines: maxLine,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: creamTitleTextColor,
          fontSize: fontSmall,
          fontWeight: fontWeightRegular,
          letterSpacing: 0.28,
        ),
      ),
    );
  }
}
