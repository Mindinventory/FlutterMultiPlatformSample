import 'package:flutter/material.dart';

//Screen Dimensions
Size screenSize;

// Spacing Constant
const spacingTiny = 5.0;
const spacingXSmall = 7.5;
const spacingSmall = 10.0;
const spacingMedium = 15.0;
const spacingLarge = 20.0;
const spacingXLarge = 25.0;
const spacingXXLarge = 30.0;
const spacingXXXLarge = 40.0;

// Font Size Constant
const fontTiny = 7.0;
const fontXXSmall = 8.0;
const fontXSmall = 10.0;
const fontSmall = 12.0;
const fontMedium = 14.0;
const fontLarge = 16.0;
const fontLarger = 18.0;
const fontXLarge = 20.0;
const fontXXLarge = 26.0;
const fontXXXLarge = 30.0;

// Font Weight Constant
const fontWeightExtraLight = FontWeight.w200;
const fontWeightLight = FontWeight.w300;
const fontWeightRegular = FontWeight.w400;
const fontWeightMedium = FontWeight.w500;
const fontWeightSemiBold = FontWeight.w600;
const fontWeightBold = FontWeight.w700;
const fontWeightExtraBold = FontWeight.w800;

const textInputHeight = 50.0;
const multilineTextInputHeight = 120.0;
const buttonHeight = 50.0;

const avatarSize = 50.0;

/* Max Length */
const maxLengthName = 40;
const maxLengthAddress = 100;
const maxLengthPhoneNumber = 15;
const maxLengthEmail = 40;
const maxLengthPassCode = 45;
const maxLengthGroupName = 25;
const maxLengthCardNumber = 16;
const maxLengthCvvNUmber = 4;
const maxLengthCardExpiry = 2;

void getScreenSize(BuildContext context) {
  screenSize = MediaQuery.of(context).size;
}

// Chat Screen
const imageSize = 33.0;
const fontMessage = 15.0;
const questionIconScale = 2.0;
