// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get loginTitle => 'लॉगिन';

  @override
  String get signupTitle => 'साइन अप';

  @override
  String get laterTitle => 'बाद में';

  @override
  String get homeTitle => 'होम';

  @override
  String get profileTitle => 'प्रोफ़ाइल';

  @override
  String welcomeUser(Object userName) {
    return 'स्वागत है $userName';
  }

  @override
  String get welcomeUserDescription => 'उपयोगकर्ता के नाम के साथ स्वागत संदेश';

  @override
  String get emailLabel => 'ईमेल';

  @override
  String get emailHint => 'अपना ईमेल दर्ज करें';

  @override
  String get passwordLabel => 'पासवर्ड';

  @override
  String get passwordHint => 'अपना पासवर्ड दर्ज करें';

  @override
  String get settingsTitle => 'सेटिंग्स';

  @override
  String get skipTitle => 'स्किप करें';

  @override
  String get searchLabel => 'Search';
}
