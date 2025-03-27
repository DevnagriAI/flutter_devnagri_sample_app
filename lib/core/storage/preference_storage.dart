import 'dart:ui';

import 'package:get_storage/get_storage.dart';

class PreferenceStorage {
  static final GetStorage _storage = GetStorage();

  // Current AppLocale
  // Get Locale as Intl Locale (with language code and country code)
  static Locale getIntlLocale() {
    String? localeString = _storage.read<String>("AppLocale");
    if (localeString != null && localeString.isNotEmpty) {
      List<String> parts = localeString.split('_');
      if (parts.length == 2) {
        return Locale(parts[0], parts[1]); // e.g., Locale('en', 'US')
      } else if (parts.length == 1) {
        return Locale(parts[0]); // If only language code exists
      }
    }
    return const Locale('en');
  }

  // Set Locale using Intl (language code + country code)
  static Future<bool> setIntlLocale(Locale locale) async {
    try {
      String localeString = locale.countryCode != null
          ? '${locale.languageCode}_${locale.countryCode}'
          : locale.languageCode;
      await _storage.write("AppLocale", localeString);
      return true;
    } catch (error) {
      return false;
    }
  }

  static bool hasData(String key) => _storage.hasData(key);

  // To Remove Particular Key
  static void removeValue(String key) => _storage.remove(key);

  // To Clear All Prefs
  static Future<void> clearStorage() async {
    final locale = getIntlLocale();

    await _storage.erase();

    // Putting Value Back
    PreferenceStorage.setIntlLocale(locale);
  }
}
