enum ScreenType { mobile, tablet, desktop }

class ResponsiveBreakpoints {
  static const double mobile = 600;
  static const double tablet = 1024;
  static const double desktop = 1440;
}

ScreenType getScreenType(double width) {
  if (width < ResponsiveBreakpoints.mobile) {
    return ScreenType.mobile;
  } else if (width < ResponsiveBreakpoints.tablet) {
    return ScreenType.tablet;
  } else {
    return ScreenType.desktop;
  }
}
