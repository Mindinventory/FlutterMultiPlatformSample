import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_multiplatform_sample/utils/color_utils.dart';
import 'package:flutter_multiplatform_sample/utils/images.dart';

class FrostedLikeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          decoration: BoxDecoration(color: frostedBackColor.withOpacity(0.5), borderRadius: BorderRadius.circular(30.0)),
          height: 40.0,
          width: 40.0,
          child: Image.asset(icLike),
        ),
      ),
    );
  }
}
