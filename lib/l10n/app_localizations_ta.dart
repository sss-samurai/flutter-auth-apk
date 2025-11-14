// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get homeTitle => 'முகப்பு';

  @override
  String get profileTitle => 'சுயவிவரம்';

  @override
  String get settingsTitle => 'அமைப்புகள்';

  @override
  String get loginTitle => 'உள்நுழை';

  @override
  String get signupTitle => 'பதிவு செய்';

  @override
  String get laterTitle => 'பிறகு';

  @override
  String get skipTitle => 'தவிர்க்கவும்';

  @override
  String welcomeUser(String userName) {
    return 'வரவேற்கிறோம் $userName';
  }

  @override
  String get emailLabel => 'மின்னஞ்சல்';

  @override
  String get emailHint => 'உங்கள் மின்னஞ்சலை உள்ளிடவும்';

  @override
  String get passwordLabel => 'கடவுச்சொல்';

  @override
  String get passwordHint => 'உங்கள் கடவுச்சொல்லை உள்ளிடவும்';

  @override
  String get searchLabel => 'Search';

  @override
  String get loginHeader => 'Login';

  @override
  String get loginSubtitle => 'Enter your credentials to continue';

  @override
  String get signupHeading => 'Sign Up';

  @override
  String get signupSubtitle => 'Create a new account';

  @override
  String get signupButton => 'Sign Up';

  @override
  String get createAccountTitle => 'Create a New Account';

  @override
  String get createAccountButton => 'Create Account';

  @override
  String get alreadyHaveAccount => 'Already have an account?';

  @override
  String get loginButton => 'Login';

  @override
  String get otpHeader => 'OTP';

  @override
  String get otpSubtitle => 'Enter your OTP';

  @override
  String get verify => 'Verify';

  @override
  String get otpFieldLabel => 'OTP';
}
