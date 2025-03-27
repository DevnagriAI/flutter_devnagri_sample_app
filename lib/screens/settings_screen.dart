import 'package:devnagri_sdk/devnagri_sdk.dart';
import 'package:example/core/storage/preference_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../l10n/generated/l10n.dart';
import '../main.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  late Locale _selectedLocale;

  @override
  void initState() {
    _selectedLocale = PreferenceStorage.getIntlLocale();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Dev.of(context).settings),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Language".dev,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.separated(
                itemCount: Devnagri.supportedLanguages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    tileColor: Colors.purple.shade50,
                    onTap: () async {
                      _selectedLocale = Devnagri.supportedLocales[index];

                      Devnagri.supportedLanguages;

                      MyApp.of(context).setLocale(_selectedLocale);

                      Devnagri.languageChanged(context).then(
                          (_) => WidgetsBinding.instance.addPostFrameCallback(
                                (_) {
                                  if (context.mounted) {
                                    setState(() {});
                                  }
                                },
                              ));
                    },
                    title: Text(
                      Devnagri.supportedLanguages[index].name,
                      style: TextStyle(
                          fontSize: Devnagri.supportedLanguages[index].code ==
                                  _selectedLocale.languageCode
                              ? 21
                              : 20,
                          color: Colors.black,
                          fontWeight: Devnagri.supportedLanguages[index].code ==
                                  _selectedLocale.languageCode
                              ? FontWeight.w800
                              : FontWeight.w600),
                    ),
                    trailing: Devnagri.supportedLanguages[index].code
                            .toLowerCase()
                            .contains(_selectedLocale.languageCode.toLowerCase())
                        ? const Icon(
                            CupertinoIcons.checkmark_alt_circle_fill,
                            color: Colors.lightGreen,
                            size: 35,
                          )
                        : const SizedBox(),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(
                  height: 10,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                '${Devnagri.getCurrentLanguageName()} | ${Intl.getCurrentLocale()}',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    letterSpacing: 1,
                    color: Colors.grey.shade900,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
