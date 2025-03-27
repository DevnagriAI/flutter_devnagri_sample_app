import 'package:devnagri_sdk/devnagri_sdk.dart';
import 'package:example/screens/bottom_nav/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'core/storage/preference_storage.dart';
import 'l10n/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();

  // Configures the Devnagri SDK
  await Devnagri.init(
      languageBundle: Dev.getLanguageBundle(),
      apiKey: '<DEVNAGARI_API_KEY>',
      logging: true);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  static MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<MyAppState>()!;

  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  Locale _currentLocale = PreferenceStorage.getIntlLocale();

  void setLocale(Locale newLocale) {
    setState(() {
      _currentLocale = newLocale;
      debugPrint("New App Locale: $_currentLocale");
    });

    PreferenceStorage.setIntlLocale(newLocale);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Devnagari SDK',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const DevnagriScope(
        showTakeScreenshotButton: true,
        child: BottomNav(),
      ),
      locale: _currentLocale,
      localizationsDelegates: Dev.localizationsDelegates,
      supportedLocales: Devnagri.supportedLocales,
    );
  }
}
