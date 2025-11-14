// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get homeTitle => 'Home';

  @override
  String get profileTitle => 'Profile';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get loginTitle => 'Login';

  @override
  String get signupTitle => 'Sign Up';

  @override
  String get laterTitle => 'Later';

  @override
  String get skipTitle => 'Skip';

  @override
  String welcomeUser(String userName) {
    return 'Welcome $userName';
  }

  @override
  String get emailLabel => 'Email';

  @override
  String get emailHint => 'Enter your email';

  @override
  String get passwordLabel => 'Password';

  @override
  String get passwordHint => 'Enter your password';

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
