// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get loginTitle => 'உள்நுழை';

  @override
  String get signupTitle => 'பதிவு செய்';

  @override
  String get laterTitle => 'பிறகு';

  @override
  String get homeTitle => 'முகப்பு';

  @override
  String get profileTitle => 'சுயவிவரம்';

  @override
  String welcomeUser(Object userName) {
    return 'வரவேற்கிறோம் $userName';
  }

  @override
  String get welcomeUserDescription => 'பயனர் பெயருடன் வரவேற்பு செய்தி';

  @override
  String get emailLabel => 'மின்னஞ்சல்';

  @override
  String get emailHint => 'உங்கள் மின்னஞ்சலை உள்ளிடவும்';

  @override
  String get passwordLabel => 'கடவுச்சொல்';

  @override
  String get passwordHint => 'உங்கள் கடவுச்சொல்லை உள்ளிடவும்';

  @override
  String get settingsTitle => 'அமைப்புகள்';

  @override
  String get skipTitle => 'தவிர்க்கவும்';
}
