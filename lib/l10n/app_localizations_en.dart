// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get loginTitle => 'Login';

  @override
  String get signupTitle => 'Sign Up';

  @override
  String get laterTitle => 'Later';

  @override
  String get homeTitle => 'Home';

  @override
  String get profileTitle => 'Profile';

  @override
  String welcomeUser(Object userName) {
    return 'Welcome $userName';
  }

  @override
  String get welcomeUserDescription => 'Welcome message with user name';

  @override
  String get emailLabel => 'Email';

  @override
  String get emailHint => 'Enter your email';

  @override
  String get passwordLabel => 'Password';

  @override
  String get passwordHint => 'Enter your password';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get skipTitle => 'Skip';

  @override
  String get searchLabel => 'Search';
}
