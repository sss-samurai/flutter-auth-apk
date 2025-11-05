import 'package:flutter/material.dart';
import 'package:token_manage_apk/core/utils/responsive/responsive_breakpoints.dart';

class ResponsiveUtils {
  static EdgeInsets screenPadding(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenType = getScreenType(screenWidth);

    switch (screenType) {
      case ScreenType.mobile:
        return const EdgeInsets.all(10);
      case ScreenType.tablet:
        return const EdgeInsets.all(20);
      case ScreenType.desktop:
        return const EdgeInsets.symmetric(horizontal: 40, vertical: 30);
    }
  }

  static double textFieldMaxWidth(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenType = getScreenType(screenWidth);

    switch (screenType) {
      case ScreenType.mobile:
        return double.infinity;
      case ScreenType.tablet:
        return 500;
      case ScreenType.desktop:
        return 600;
    }
  }

  static EdgeInsets textFieldPadding(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenType = getScreenType(screenWidth);

    switch (screenType) {
      case ScreenType.mobile:
        return const EdgeInsets.symmetric(vertical: 6, horizontal: 8);
      case ScreenType.tablet:
        return const EdgeInsets.symmetric(vertical: 8, horizontal: 12);
      case ScreenType.desktop:
        return const EdgeInsets.symmetric(vertical: 10, horizontal: 16);
    }
  }

  static double getCarouselHeight(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenType = getScreenType(screenWidth);

    switch (screenType) {
      case ScreenType.mobile:
        return 180;
      case ScreenType.tablet:
        return 250;
      case ScreenType.desktop:
        return 350;
    }
  }

  static double getMaxWidth(ScreenType type, double screenWidth) {
    switch (type) {
      case ScreenType.mobile:
        return screenWidth; // full width
      case ScreenType.tablet:
        return screenWidth * 0.8; // capped width
      case ScreenType.desktop:
        return 800; // max width cap
    }
  }

  static int getCrossAxisCount(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenType = getScreenType(screenWidth);
    switch (screenType) {
      case ScreenType.desktop:
        return 4;
      case ScreenType.tablet:
        return 3;
      case ScreenType.mobile:
        return 2;
    }
  }

  static double getSpacing(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenType = getScreenType(screenWidth);
    switch (screenType) {
      case ScreenType.desktop:
        return 24;
      case ScreenType.tablet:
        return 16;
      case ScreenType.mobile:
        return 8;
    }
  }
}
