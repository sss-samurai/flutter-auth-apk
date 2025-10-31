// lib/shared/ui/text/text_type.dart
import 'package:flutter/material.dart';
import '../../../core/theme/app_typography.dart';

enum TextType {
  headerBold,
  headerSemiBold,
  subHeader,
  subHeaderBold,
  navigationText,
  bodyText,
  bodyTextBold,
  alertText,
  buttonText,
  buttonLargeText,
  strongText,
  strongTextBold,
  otpText,
  inputText,
  muteText,
  menuText,
  cartText,
  priceSale,
  creditCardText,
  notificationCount,
}

extension TextTypeExtension on TextType {
  TextStyle resolve(BuildContext context) {
    switch (this) {
      case TextType.headerBold:
        return AppTypography.headerBold;
      case TextType.headerSemiBold:
        return AppTypography.headerSemiBold;
      case TextType.subHeader:
        return AppTypography.subHeader;
      case TextType.subHeaderBold:
        return AppTypography.subHeaderBold;
      case TextType.navigationText:
        return AppTypography.navigationText;
      case TextType.bodyText:
        return AppTypography.bodyText;
      case TextType.bodyTextBold:
        return AppTypography.bodyTextBold;
      case TextType.alertText:
        return AppTypography.alertText;
      case TextType.buttonText:
        return AppTypography.buttonText;
      case TextType.buttonLargeText:
        return AppTypography.buttonLargeText;
      case TextType.strongText:
        return AppTypography.strongText;
      case TextType.strongTextBold:
        return AppTypography.strongTextBold;
      case TextType.otpText:
        return AppTypography.otpText;
      case TextType.inputText:
        return AppTypography.inputText;
      case TextType.muteText:
        return AppTypography.muteText;
      case TextType.menuText:
        return AppTypography.menuText;
      case TextType.cartText:
        return AppTypography.cartText;
      case TextType.priceSale:
        return AppTypography.priceSale;
      case TextType.creditCardText:
        return AppTypography.creditCardText;
      case TextType.notificationCount:
        return AppTypography.notificationCount;
    }
  }
}
