import 'package:flutter/material.dart';
import 'responsive_breakpoints.dart';

class ResponsiveHeader {
  static double getMaxWidth(BuildContext context, {double maxWidth = 800.0}) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenType = getScreenType(screenWidth);

    switch (screenType) {
      case ScreenType.mobile:
        return screenWidth * 0.95;
      case ScreenType.tablet:
        return screenWidth * 0.85;
      case ScreenType.desktop:
        return maxWidth;
    }
  }

  static double getAvatarSize(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenType = getScreenType(screenWidth);

    switch (screenType) {
      case ScreenType.mobile:
        return 50;
      case ScreenType.tablet:
        return 60;
      case ScreenType.desktop:
        return 70;
    }
  }
}
