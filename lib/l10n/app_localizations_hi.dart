// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get homeTitle => 'होम';

  @override
  String get profileTitle => 'प्रोफ़ाइल';

  @override
  String get settingsTitle => 'सेटिंग्स';

  @override
  String get loginTitle => 'लॉगिन';

  @override
  String get signupTitle => 'साइन अप';

  @override
  String get laterTitle => 'बाद में';

  @override
  String get skipTitle => 'स्किप करें';

  @override
  String welcomeUser(String userName) {
    return 'स्वागत है $userName';
  }

  @override
  String get emailLabel => 'ईमेल';

  @override
  String get emailHint => 'अपना ईमेल दर्ज करें';

  @override
  String get passwordLabel => 'पासवर्ड';

  @override
  String get passwordHint => 'अपना पासवर्ड दर्ज करें';

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
