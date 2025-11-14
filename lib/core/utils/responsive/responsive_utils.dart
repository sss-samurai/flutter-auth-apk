import 'package:flutter/material.dart';
import 'package:token_manage_apk/core/utils/responsive/responsive_breakpoints.dart';

class ResponsiveUtils {
  static ScreenType _screenType(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return getScreenType(width);
  }

  static EdgeInsets screenPadding(BuildContext context) {
    switch (_screenType(context)) {
      case ScreenType.mobile:
        return const EdgeInsets.all(10);
      case ScreenType.tablet:
        return const EdgeInsets.all(20);
      case ScreenType.desktop:
        return const EdgeInsets.symmetric(horizontal: 40, vertical: 30);
    }
  }

  static double textFieldMaxWidth(BuildContext context) {
    switch (_screenType(context)) {
      case ScreenType.mobile:
        return double.infinity;
      case ScreenType.tablet:
        return 500;
      case ScreenType.desktop:
        return 600;
    }
  }

  static EdgeInsets textFieldPadding(BuildContext context) {
    switch (_screenType(context)) {
      case ScreenType.mobile:
        return const EdgeInsets.symmetric(vertical: 6, horizontal: 8);
      case ScreenType.tablet:
        return const EdgeInsets.symmetric(vertical: 8, horizontal: 12);
      case ScreenType.desktop:
        return const EdgeInsets.symmetric(vertical: 10, horizontal: 16);
    }
  }

  static double getCarouselHeight(BuildContext context) {
    switch (_screenType(context)) {
      case ScreenType.mobile:
        return 180;
      case ScreenType.tablet:
        return 250;
      case ScreenType.desktop:
        return 350;
    }
  }

  static double getMaxWidth(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    switch (_screenType(context)) {
      case ScreenType.mobile:
        return screenWidth;
      case ScreenType.tablet:
        return screenWidth * 0.8;
      case ScreenType.desktop:
        return 800; // max width cap
    }
  }

  static int getCrossAxisCount(BuildContext context) {
    switch (_screenType(context)) {
      case ScreenType.desktop:
        return 4;
      case ScreenType.tablet:
        return 3;
      case ScreenType.mobile:
        return 2;
    }
  }

  static double getSpacing(BuildContext context) {
    switch (_screenType(context)) {
      case ScreenType.desktop:
        return 24;
      case ScreenType.tablet:
        return 16;
      case ScreenType.mobile:
        return 8;
    }
  }

  static double getImageSizeInDetailesView(BuildContext context) {
    switch (_screenType(context)) {
      case ScreenType.mobile:
        return 250;
      case ScreenType.tablet:
        return 350;
      case ScreenType.desktop:
        return 500;
    }
  }

  static double loginContainerWidth(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    switch (_screenType(context)) {
      case ScreenType.mobile:
        return screenWidth * 0.9;
      case ScreenType.tablet:
        return 400.0;
      case ScreenType.desktop:
        return 420.0;
    }
  }
}
