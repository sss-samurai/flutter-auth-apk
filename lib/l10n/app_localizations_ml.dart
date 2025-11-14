// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get homeTitle => 'ഹോം';

  @override
  String get profileTitle => 'പ്രൊഫൈൽ';

  @override
  String get settingsTitle => 'സെറ്റിംഗ്സ്';

  @override
  String get loginTitle => 'ലോഗിൻ';

  @override
  String get signupTitle => 'സൈൻ അപ്പ്';

  @override
  String get laterTitle => 'പിന്നീട്';

  @override
  String get skipTitle => 'സ്കിപ്പ് ചെയ്യുക';

  @override
  String welcomeUser(String userName) {
    return 'സ്വാഗതം $userName';
  }

  @override
  String get emailLabel => 'ഇമെയിൽ';

  @override
  String get emailHint => 'നിങ്ങളുടെ ഇമെയിൽ നൽകുക';

  @override
  String get passwordLabel => 'പാസ്‌വേഡ്';

  @override
  String get passwordHint => 'നിങ്ങളുടെ പാസ്‌വേഡ് നൽകുക';

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
