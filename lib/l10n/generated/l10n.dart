// GENERATED CODE
//
// After the template files .arb have been changed,
// generate this class by the command in the terminal:
// flutter pub run //       'devnagri SDK',_flutter_sdk:gen-lok-l10n
//
// Please see https://pub.dev/packages/devnagri_sdk

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes
// ignore_for_file: depend_on_referenced_packages

import 'package:devnagri_sdk/devnagri_sdk.dart';
import 'package:devnagri_sdk/src/ota/domain/models/model_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

class Dev {
  Dev._internal();

  static const LocalizationsDelegate<Dev> delegate = _AppLocalizationDelegate();

  static const List<Locale> supportedLocales = [
    Locale.fromSubtags(languageCode: 'en')
  ];

  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  static const _encodedARB =
      "'helloWorld': 'Greetings, Sun!','title': 'Explore the Washroom!','puppy': 'Puppy's papa','spicyYetSweet': 'Spicy {userName} yet sweet!','dogs': '{countless, plural, =0{No dog's tail around} =1{1 playful pup} other{{countless} furry friends}}','nElephants': '{county, plural, =0{No elephant's tail spotted} =1{1 majestic elephant trunk spotted} other{{county} giants roaming free!}}','multipurposeApp': 'Multipurpose App','welcomeAboard': 'Welcome aboard, Captain! Prepare to set sail.','settings': 'Settings','animals': 'Animals','vehicle': 'Vehicle','number': 'Number','lion': 'Lion','elephant': 'Elephant','tiger': 'Tiger','zebra': 'Zebra','bear': 'Bear','gorilla': 'Gorilla','chimpanzee': 'Chimpanzee','orangutan': 'Orangutan','rhinoceros': 'Rhinoceros','hippopotamus': 'Hippopotamus','giraffe': 'Giraffe','camel': 'Camel','kangaroo': 'Kangaroo','koala': 'Koala','panda': 'Panda','wolf': 'Wolf','fox': 'Fox','rabbit': 'Rabbit','deer': 'Deer','snake': 'Snake','crocodile': 'Crocodile','turtle': 'Turtle','owl': 'Owl','eagle': 'Eagle','parrot': 'Parrot','penguin': 'Penguin','dolphin': 'Dolphin','whale': 'Whale','shark': 'Shark','fish': 'Fish','butterfly': 'Butterfly','randomAnimals': 'Random Animals','one': 'one','two': 'two','three': 'three','four': 'four','five': 'five','six': 'six','seven': 'seven','eight': 'eight','nine': 'nine','ten': 'ten','eleven': 'eleven','twelve': 'twelve','thirteen': 'thirteen','fourteen': 'fourteen','fifteen': 'fifteen','sixteen': 'sixteen','seventeen': 'seventeen','eighteen': 'eighteen','nineteen': 'nineteen','twenty': 'twenty','twentyOne': 'twenty-one','twentyTwo': 'twenty-two','twentyThree': 'twenty-three','twentyFour': 'twenty-four','twentyFive': 'twenty-five','twentySix': 'twenty-six','twentySeven': 'twenty-seven','twentyEight': 'twenty-eight','twentyNine': 'twenty-nine','thirty': 'thirty','car': 'car','airplane': 'airplane','motorcycle': 'motorcycle','bus': 'bus','train': 'train','truck': 'truck','scooter': 'scooter','motorWithBoat': 'motor and boat','ship': 'ship\nboat','numbers': 'Numbers'";

  static final Map<String, List<String>> _metadata = {
    'helloWorld': [],
    'title': [],
    'puppy': [],
    'spicyYetSweet': ['userName'],
    'dogs': ['countless'],
    'nElephants': ['county'],
    'multipurposeApp': [],
    'welcomeAboard': [],
    'settings': [],
    'animals': [],
    'vehicle': [],
    'number': [],
    'lion': [],
    'elephant': [],
    'tiger': [],
    'zebra': [],
    'bear': [],
    'gorilla': [],
    'chimpanzee': [],
    'orangutan': [],
    'rhinoceros': [],
    'hippopotamus': [],
    'giraffe': [],
    'camel': [],
    'kangaroo': [],
    'koala': [],
    'panda': [],
    'wolf': [],
    'fox': [],
    'rabbit': [],
    'deer': [],
    'snake': [],
    'crocodile': [],
    'turtle': [],
    'owl': [],
    'eagle': [],
    'parrot': [],
    'penguin': [],
    'dolphin': [],
    'whale': [],
    'shark': [],
    'fish': [],
    'butterfly': [],
    'randomAnimals': [],
    'one': [],
    'two': [],
    'three': [],
    'four': [],
    'five': [],
    'six': [],
    'seven': [],
    'eight': [],
    'nine': [],
    'ten': [],
    'eleven': [],
    'twelve': [],
    'thirteen': [],
    'fourteen': [],
    'fifteen': [],
    'sixteen': [],
    'seventeen': [],
    'eighteen': [],
    'nineteen': [],
    'twenty': [],
    'twentyOne': [],
    'twentyTwo': [],
    'twentyThree': [],
    'twentyFour': [],
    'twentyFive': [],
    'twentySix': [],
    'twentySeven': [],
    'twentyEight': [],
    'twentyNine': [],
    'thirty': [],
    'car': [],
    'airplane': [],
    'motorcycle': [],
    'bus': [],
    'train': [],
    'truck': [],
    'scooter': [],
    'motorWithBoat': [],
    'ship': [],
    'numbers': []
  };

  static Future<Dev> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    Devnagri.instance.metadata = _metadata;

    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Dev._internal();
      return instance;
    });
  }

  static Dev of(BuildContext context) {
    final instance = Localizations.of<Dev>(context, Dev);
    assert(instance != null,
        'No instance of Dev present in the widget tree. Did you add Dev.delegate in localizationsDelegates?');
    return instance!;
  }

  static LanguageBundle getLanguageBundle() {
    final Map<String, String> arbMap = _decodeARB(_encodedARB);

    final Map<String, Translation> translations = {};

    arbMap.forEach((key, value) {
      if (value is String) {
        if (RegExp(r'{\w+, plural,').hasMatch(value)) {
          translations[key] = _parsePluralTranslation(value);
        } else {
          translations[key] = _parseSimpleTranslation(value);
        }
      }
    });

    final languageBundle =
        LanguageBundle(locale: 'en', translations: translations);
    return languageBundle;
  }

  // Helper Parsing Methods
  static SimpleTranslation _parseSimpleTranslation(String value) {
    final elements = <TranslationElement>[];
    final regex = RegExp(r'{(\w+)}');
    final matches = regex.allMatches(value);

    int lastIndex = 0;
    for (final match in matches) {
      if (match.start > lastIndex) {
        elements.add(TranslationElement.literal(
            value: value.substring(lastIndex, match.start)));
      }
      elements.add(TranslationElement.placeholder(value: match.group(1)!));
      lastIndex = match.end;
    }
    if (lastIndex < value.length) {
      elements
          .add(TranslationElement.literal(value: value.substring(lastIndex)));
    }

    return SimpleTranslation(elements: elements);
  }

  static SimpleTranslation _parseSimpleOrPlaceholderTranslation(String value) {
    final regex = RegExp(r'{(\w+)}');

    final hasPlaceholder = regex.hasMatch(value);

    if (hasPlaceholder) {
      final elements = <TranslationElement>[];
      final matches = regex.allMatches(value);

      int lastIndex = 0;
      for (final match in matches) {
        if (match.start > lastIndex) {
          elements.add(TranslationElement.literal(
              value: value.substring(lastIndex, match.start)));
        }
        elements.add(TranslationElement.placeholder(value: match.group(1)!));
        lastIndex = match.end;
      }
      if (lastIndex < value.length) {
        elements
            .add(TranslationElement.literal(value: value.substring(lastIndex)));
      }

      return SimpleTranslation(elements: elements);
    } else {
      return SimpleTranslation(
          elements: [TranslationElement.literal(value: value)]);
    }
  }

  static Map<String, String> _decodeARB(String value) {
    // Clean up the string by removing unnecessary characters and splitting into pairs
    List<String> pairs = value.split("',");

    // Create a map from the pairs
    Map<String, String> resultMap = {};
    for (String pair in pairs) {
      // Split key-value pair by ": '"
      List<String> keyValue = pair.split(": '");
      if (keyValue.length == 2) {
        // Remove leading single quote from value
        String key = keyValue[0].trim().replaceAll("'", "");
        String value = keyValue[1].trim().replaceAll("'", "");

        // Add to map
        resultMap[key] = value;
      }
    }
    return resultMap;
  }

  static PluralTranslation _parsePluralTranslation(String value) {
    // Extract the argument from the plural statement
    final argumentMatch = RegExp(r'{(\w+), plural,').firstMatch(value);
    if (argumentMatch == null) {
      throw ArgumentError('No valid argument found for plural translation.');
    }

    final argument = argumentMatch.group(1)!;

    // 1. Extract plural case information:
    final regex = RegExp(r'=(\d+)\{([^{}]*)}|other{(([^{}]|\{[^{}]*\})*)}');
    final matches = regex.allMatches(value);

    // 2. Parse individual cases:
    final Map<String, Translation?> pluralCases = {};

    for (final match in matches) {
      final keyword = match.group(1) ?? match.group(3) ?? 'other';

      String pluralCase;
      switch (keyword) {
        case '0':
          pluralCase = 'zero';
          break;
        case '1':
          pluralCase = 'one';
          break;
        case '2':
          pluralCase = 'two';
          break;
        default:
          pluralCase = 'other';
          break;
      }

      final translationValue = match.group(2) ?? match.group(3) ?? '';
      final translation =
          _parseSimpleOrPlaceholderTranslation(translationValue);
      pluralCases[pluralCase] = translation;
    }

    // 3. Construct the PluralTranslation object:
    return PluralTranslation(
      argument: argument,
      // Use extracted argument
      zero: pluralCases['zero'],
      one: pluralCases['one'],
      two: pluralCases['two'],
      few: pluralCases['few'],
      many: pluralCases['many'],
      other: pluralCases['other'] ??
          SimpleTranslation(
              elements: []), // Empty 'other' if no translation found
    );
  }

  /// `Greetings, Sun!`
  String get helloWorld {
    return Intl.message(
      'Greetings, Sun!',
      name: 'helloWorld',
      desc: 'The conventional newborn programmer greeting',
      args: [],
    );
  }

  /// `Explore the Washroom!`
  String get title {
    return Intl.message(
      'Explore the Washroom!',
      name: 'title',
      desc: 'The title displayed on the main screen',
      args: [],
    );
  }

  /// `Puppy's papa`
  String get puppy {
    return Intl.message(
      'Puppy\'s papa',
      name: 'puppy',
      desc: 'A small, playful domesticated carnivorous mammal',
      args: [],
    );
  }

  /// `Spicy {userName} yet sweet!`
  String spicyYetSweet(Object userName) {
    return Intl.message(
      'Spicy $userName yet sweet!',
      name: 'spicyYetSweet',
      desc: 'A message with a single parameter',
      args: [userName],
    );
  }

  /// `{countless, plural, =0{No dog's tail around} =1{1 playful pup} other{{countless} furry friends}}`
  String dogs(num countless) {
    return Intl.plural(
      countless,
      zero: 'No dog\'s tail around',
      one: '1 playful pup',
      other: '$countless furry friends',
      name: 'dogs',
      desc: 'A plural message indicating the number of dogs',
      args: [countless],
    );
  }

  /// `{county, plural, =0{No elephant's tail spotted} =1{1 majestic elephant trunk spotted} other{{county} giants roaming free!}}`
  String nElephants(num county) {
    return Intl.plural(
      county,
      zero: 'No elephant\'s tail spotted',
      one: '1 majestic elephant trunk spotted',
      other: '$county giants roaming free!',
      name: 'nElephants',
      desc: 'A plural message indicating the number of elephants',
      args: [county],
    );
  }

  /// `Multipurpose App`
  String get multipurposeApp {
    return Intl.message(
      'Multipurpose App',
      name: 'multipurposeApp',
      desc: '',
      args: [],
    );
  }

  /// `Welcome aboard, Captain! Prepare to set sail.`
  String get welcomeAboard {
    return Intl.message(
      'Welcome aboard, Captain! Prepare to set sail.',
      name: 'welcomeAboard',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Animals`
  String get animals {
    return Intl.message(
      'Animals',
      name: 'animals',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle`
  String get vehicle {
    return Intl.message(
      'Vehicle',
      name: 'vehicle',
      desc: '',
      args: [],
    );
  }

  /// `Number`
  String get number {
    return Intl.message(
      'Number',
      name: 'number',
      desc: '',
      args: [],
    );
  }

  /// `Lion`
  String get lion {
    return Intl.message(
      'Lion',
      name: 'lion',
      desc: '',
      args: [],
    );
  }

  /// `Elephant`
  String get elephant {
    return Intl.message(
      'Elephant',
      name: 'elephant',
      desc: '',
      args: [],
    );
  }

  /// `Tiger`
  String get tiger {
    return Intl.message(
      'Tiger',
      name: 'tiger',
      desc: '',
      args: [],
    );
  }

  /// `Zebra`
  String get zebra {
    return Intl.message(
      'Zebra',
      name: 'zebra',
      desc: '',
      args: [],
    );
  }

  /// `Bear`
  String get bear {
    return Intl.message(
      'Bear',
      name: 'bear',
      desc: '',
      args: [],
    );
  }

  /// `Gorilla`
  String get gorilla {
    return Intl.message(
      'Gorilla',
      name: 'gorilla',
      desc: '',
      args: [],
    );
  }

  /// `Chimpanzee`
  String get chimpanzee {
    return Intl.message(
      'Chimpanzee',
      name: 'chimpanzee',
      desc: '',
      args: [],
    );
  }

  /// `Orangutan`
  String get orangutan {
    return Intl.message(
      'Orangutan',
      name: 'orangutan',
      desc: '',
      args: [],
    );
  }

  /// `Rhinoceros`
  String get rhinoceros {
    return Intl.message(
      'Rhinoceros',
      name: 'rhinoceros',
      desc: '',
      args: [],
    );
  }

  /// `Hippopotamus`
  String get hippopotamus {
    return Intl.message(
      'Hippopotamus',
      name: 'hippopotamus',
      desc: '',
      args: [],
    );
  }

  /// `Giraffe`
  String get giraffe {
    return Intl.message(
      'Giraffe',
      name: 'giraffe',
      desc: '',
      args: [],
    );
  }

  /// `Camel`
  String get camel {
    return Intl.message(
      'Camel',
      name: 'camel',
      desc: '',
      args: [],
    );
  }

  /// `Kangaroo`
  String get kangaroo {
    return Intl.message(
      'Kangaroo',
      name: 'kangaroo',
      desc: '',
      args: [],
    );
  }

  /// `Koala`
  String get koala {
    return Intl.message(
      'Koala',
      name: 'koala',
      desc: '',
      args: [],
    );
  }

  /// `Panda`
  String get panda {
    return Intl.message(
      'Panda',
      name: 'panda',
      desc: '',
      args: [],
    );
  }

  /// `Wolf`
  String get wolf {
    return Intl.message(
      'Wolf',
      name: 'wolf',
      desc: '',
      args: [],
    );
  }

  /// `Fox`
  String get fox {
    return Intl.message(
      'Fox',
      name: 'fox',
      desc: '',
      args: [],
    );
  }

  /// `Rabbit`
  String get rabbit {
    return Intl.message(
      'Rabbit',
      name: 'rabbit',
      desc: '',
      args: [],
    );
  }

  /// `Deer`
  String get deer {
    return Intl.message(
      'Deer',
      name: 'deer',
      desc: '',
      args: [],
    );
  }

  /// `Snake`
  String get snake {
    return Intl.message(
      'Snake',
      name: 'snake',
      desc: '',
      args: [],
    );
  }

  /// `Crocodile`
  String get crocodile {
    return Intl.message(
      'Crocodile',
      name: 'crocodile',
      desc: '',
      args: [],
    );
  }

  /// `Turtle`
  String get turtle {
    return Intl.message(
      'Turtle',
      name: 'turtle',
      desc: '',
      args: [],
    );
  }

  /// `Owl`
  String get owl {
    return Intl.message(
      'Owl',
      name: 'owl',
      desc: '',
      args: [],
    );
  }

  /// `Eagle`
  String get eagle {
    return Intl.message(
      'Eagle',
      name: 'eagle',
      desc: '',
      args: [],
    );
  }

  /// `Parrot`
  String get parrot {
    return Intl.message(
      'Parrot',
      name: 'parrot',
      desc: '',
      args: [],
    );
  }

  /// `Penguin`
  String get penguin {
    return Intl.message(
      'Penguin',
      name: 'penguin',
      desc: '',
      args: [],
    );
  }

  /// `Dolphin`
  String get dolphin {
    return Intl.message(
      'Dolphin',
      name: 'dolphin',
      desc: '',
      args: [],
    );
  }

  /// `Whale`
  String get whale {
    return Intl.message(
      'Whale',
      name: 'whale',
      desc: '',
      args: [],
    );
  }

  /// `Shark`
  String get shark {
    return Intl.message(
      'Shark',
      name: 'shark',
      desc: '',
      args: [],
    );
  }

  /// `Fish`
  String get fish {
    return Intl.message(
      'Fish',
      name: 'fish',
      desc: '',
      args: [],
    );
  }

  /// `Butterfly`
  String get butterfly {
    return Intl.message(
      'Butterfly',
      name: 'butterfly',
      desc: '',
      args: [],
    );
  }

  /// `Random Animals`
  String get randomAnimals {
    return Intl.message(
      'Random Animals',
      name: 'randomAnimals',
      desc: '',
      args: [],
    );
  }

  /// `one`
  String get one {
    return Intl.message(
      'one',
      name: 'one',
      desc: '',
      args: [],
    );
  }

  /// `two`
  String get two {
    return Intl.message(
      'two',
      name: 'two',
      desc: '',
      args: [],
    );
  }

  /// `three`
  String get three {
    return Intl.message(
      'three',
      name: 'three',
      desc: '',
      args: [],
    );
  }

  /// `four`
  String get four {
    return Intl.message(
      'four',
      name: 'four',
      desc: '',
      args: [],
    );
  }

  /// `five`
  String get five {
    return Intl.message(
      'five',
      name: 'five',
      desc: '',
      args: [],
    );
  }

  /// `six`
  String get six {
    return Intl.message(
      'six',
      name: 'six',
      desc: '',
      args: [],
    );
  }

  /// `seven`
  String get seven {
    return Intl.message(
      'seven',
      name: 'seven',
      desc: '',
      args: [],
    );
  }

  /// `eight`
  String get eight {
    return Intl.message(
      'eight',
      name: 'eight',
      desc: '',
      args: [],
    );
  }

  /// `nine`
  String get nine {
    return Intl.message(
      'nine',
      name: 'nine',
      desc: '',
      args: [],
    );
  }

  /// `ten`
  String get ten {
    return Intl.message(
      'ten',
      name: 'ten',
      desc: '',
      args: [],
    );
  }

  /// `eleven`
  String get eleven {
    return Intl.message(
      'eleven',
      name: 'eleven',
      desc: '',
      args: [],
    );
  }

  /// `twelve`
  String get twelve {
    return Intl.message(
      'twelve',
      name: 'twelve',
      desc: '',
      args: [],
    );
  }

  /// `thirteen`
  String get thirteen {
    return Intl.message(
      'thirteen',
      name: 'thirteen',
      desc: '',
      args: [],
    );
  }

  /// `fourteen`
  String get fourteen {
    return Intl.message(
      'fourteen',
      name: 'fourteen',
      desc: '',
      args: [],
    );
  }

  /// `fifteen`
  String get fifteen {
    return Intl.message(
      'fifteen',
      name: 'fifteen',
      desc: '',
      args: [],
    );
  }

  /// `sixteen`
  String get sixteen {
    return Intl.message(
      'sixteen',
      name: 'sixteen',
      desc: '',
      args: [],
    );
  }

  /// `seventeen`
  String get seventeen {
    return Intl.message(
      'seventeen',
      name: 'seventeen',
      desc: '',
      args: [],
    );
  }

  /// `eighteen`
  String get eighteen {
    return Intl.message(
      'eighteen',
      name: 'eighteen',
      desc: '',
      args: [],
    );
  }

  /// `nineteen`
  String get nineteen {
    return Intl.message(
      'nineteen',
      name: 'nineteen',
      desc: '',
      args: [],
    );
  }

  /// `twenty`
  String get twenty {
    return Intl.message(
      'twenty',
      name: 'twenty',
      desc: '',
      args: [],
    );
  }

  /// `twenty-one`
  String get twentyOne {
    return Intl.message(
      'twenty-one',
      name: 'twentyOne',
      desc: '',
      args: [],
    );
  }

  /// `twenty-two`
  String get twentyTwo {
    return Intl.message(
      'twenty-two',
      name: 'twentyTwo',
      desc: '',
      args: [],
    );
  }

  /// `twenty-three`
  String get twentyThree {
    return Intl.message(
      'twenty-three',
      name: 'twentyThree',
      desc: '',
      args: [],
    );
  }

  /// `twenty-four`
  String get twentyFour {
    return Intl.message(
      'twenty-four',
      name: 'twentyFour',
      desc: '',
      args: [],
    );
  }

  /// `twenty-five`
  String get twentyFive {
    return Intl.message(
      'twenty-five',
      name: 'twentyFive',
      desc: '',
      args: [],
    );
  }

  /// `twenty-six`
  String get twentySix {
    return Intl.message(
      'twenty-six',
      name: 'twentySix',
      desc: '',
      args: [],
    );
  }

  /// `twenty-seven`
  String get twentySeven {
    return Intl.message(
      'twenty-seven',
      name: 'twentySeven',
      desc: '',
      args: [],
    );
  }

  /// `twenty-eight`
  String get twentyEight {
    return Intl.message(
      'twenty-eight',
      name: 'twentyEight',
      desc: '',
      args: [],
    );
  }

  /// `twenty-nine`
  String get twentyNine {
    return Intl.message(
      'twenty-nine',
      name: 'twentyNine',
      desc: '',
      args: [],
    );
  }

  /// `thirty`
  String get thirty {
    return Intl.message(
      'thirty',
      name: 'thirty',
      desc: '',
      args: [],
    );
  }

  /// `car`
  String get car {
    return Intl.message(
      'car',
      name: 'car',
      desc: '',
      args: [],
    );
  }

  /// `airplane`
  String get airplane {
    return Intl.message(
      'airplane',
      name: 'airplane',
      desc: '',
      args: [],
    );
  }

  /// `motorcycle`
  String get motorcycle {
    return Intl.message(
      'motorcycle',
      name: 'motorcycle',
      desc: '',
      args: [],
    );
  }

  /// `bus`
  String get bus {
    return Intl.message(
      'bus',
      name: 'bus',
      desc: '',
      args: [],
    );
  }

  /// `train`
  String get train {
    return Intl.message(
      'train',
      name: 'train',
      desc: '',
      args: [],
    );
  }

  /// `truck`
  String get truck {
    return Intl.message(
      'truck',
      name: 'truck',
      desc: '',
      args: [],
    );
  }

  /// `scooter`
  String get scooter {
    return Intl.message(
      'scooter',
      name: 'scooter',
      desc: '',
      args: [],
    );
  }

  /// `motor and boat`
  String get motorWithBoat {
    return Intl.message(
      'motor and boat',
      name: 'motorWithBoat',
      desc: '',
      args: [],
    );
  }

  /// `ship\nboat`
  String get ship {
    return Intl.message(
      'ship\nboat',
      name: 'ship',
      desc: '',
      args: [],
    );
  }

  /// `Numbers`
  String get numbers {
    return Intl.message(
      'Numbers',
      name: 'numbers',
      desc: '',
      args: [],
    );
  }
}

class _AppLocalizationDelegate extends LocalizationsDelegate<Dev> {
  const _AppLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => true;

  @override
  Future<Dev> load(Locale locale) => Dev.load(locale);

  @override
  bool shouldReload(_AppLocalizationDelegate old) => false;
}
