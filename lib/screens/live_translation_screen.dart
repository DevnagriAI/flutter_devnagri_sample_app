import 'dart:async';
import 'dart:convert';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:devnagri_sdk/devnagri_sdk.dart';
import 'package:example/core/logger_util.dart';
import 'package:flutter/material.dart';

class LiveTranslationScreen extends StatefulWidget {
  const LiveTranslationScreen({super.key});

  @override
  State<LiveTranslationScreen> createState() => _LiveTranslationScreenState();
}

class _LiveTranslationScreenState extends State<LiveTranslationScreen> {
  late final TextEditingController textToTranslateController =
      TextEditingController()..text = 'Apple Boy Cat Dog Elephant Fish Girl';

  final TextEditingController ignoreKeysController = TextEditingController();

  List<String> ignoreKeys = [];
  List<String> listStringFromTextField =
      "Apple Boy Cat Dog Elephant Fish Girl".split(" ");

  bool showIgnoreKeyInput = false;

  final liveTranslationMethods = LiveTranslationType.values;
  late LiveTranslationType _selectedItem = LiveTranslationType.values.first;

  String translatedText = '';
  bool isLoading = false;

  void onTranslationDropDownValueChange(LiveTranslationType? selectedValue) {
    if (selectedValue != null && _selectedItem != selectedValue) {
      translatedText = '';
      _selectedItem = selectedValue;

      switch (selectedValue) {
        // MAP
        case LiveTranslationType.map:
          showIgnoreKeyInput = true;

          ignoreKeys = ['lastLogin'];
          ignoreKeysController.text = 'lastLogin';

          textToTranslateController.text = jsonEncode({
            "username": "john_doe",
            "email": "john.doe@example.com",
            "location": "New York",
            "status": "active",
            "role": "admin",
            "lastLogin": "2024-07-25T12:00:00Z",
            "bio": "Developer and tech enthusiast",
            "favoriteQuote": "To be or not to be, that is the question.",
            "website": "https://www.johndoe.com",
            "language": "English",
          });
          break;

        // JSON
        case LiveTranslationType.json:
          textToTranslateController.text = jsonEncode({
            "user": {
              "id": "12345",
              "profile": {
                "name": "John Doe",
                "email": "john.doe@example.com",
                "age": 30,
                "settings": {
                  "theme": "dark",
                  "notifications": {
                    "email": true,
                    "push": false,
                    "sms": "enabled"
                  }
                }
              }
            },
            "posts": [
              {
                "id": "post1",
                "title": "My first post",
                "content": "Hello world!",
                "metadata": {"timestamp": "2024-07-25T12:00:00Z", "views": 100}
              },
              {
                "id": "post2",
                "title": "My second post",
                "content": "Another post",
                "metadata": {"timestamp": "2024-07-26T12:00:00Z", "views": 200}
              }
            ],
            "metadata": {
              "timestamp": "2024-07-25T12:00:00Z",
              "requestId": "abc-123-def-456"
            },
            "isAdmin": false,
            "age": null,
            "email": "info@example.com"
          });

          ignoreKeys = ['requestId id'];
          ignoreKeysController.text = 'requestId id';

          showIgnoreKeyInput = true;
          break;

        // LIST
        default:
          showIgnoreKeyInput = false;
          textToTranslateController.text =
              'Apple Boy Cat Dog Elephant Fish Girl';

          // Split the text by whitespace and filter out empty strings
          final List<String> newTextList = textToTranslateController.text
              .split(RegExp(r'\s+'))
              .where((segment) => segment.isNotEmpty)
              .toList();

          listStringFromTextField.clear();
          listStringFromTextField.addAll(newTextList);
      }

      setState(() {});
    }
  }

  String dropDownTranslationName(LiveTranslationType value) {
    switch (value) {
      case LiveTranslationType.map:
        return 'Map Translation';
      case LiveTranslationType.json:
        return 'JSON Translation';
      default:
        return 'List Translation';
    }
  }

  IconData dropDownTranslationIcon(LiveTranslationType value) {
    switch (value) {
      case LiveTranslationType.map:
        return Icons.map_outlined;
      case LiveTranslationType.json:
        return Icons.wifi;
      default:
        return Icons.list;
    }
  }

  void onInputTextChange(String text) {
    // When Using List Translation Method
    if (_selectedItem == LiveTranslationType.list) {
      // Split the text by whitespace and filter out empty strings
      final List<String> newTextList = text
          .split(RegExp(r'\s+'))
          .where((segment) => segment.isNotEmpty)
          .toList();

      // Update the list with new segments
      setState(() {
        listStringFromTextField.clear();
        listStringFromTextField.addAll(newTextList);
      });
    } else if (_selectedItem == LiveTranslationType.json) {
      textToTranslateController.text = jsonEncode(jsonDecode(text));
    }
  }

  void onIgnoreKeyInputTextChange(String text) {
    // Split the text by whitespace and filter out empty strings
    final List<String> newTextList = text
        .split(RegExp(r'\s+'))
        .where((segment) => segment.isNotEmpty)
        .toList();

    // Update the list with new segments
    setState(() {
      ignoreKeys.clear();
      ignoreKeys.addAll(newTextList);
    });
  }

  @override
  void dispose() {
    textToTranslateController.dispose();
    ignoreKeysController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusManager.instance.primaryFocus?.unfocus,
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: Text("Live Translation".dev),
          backgroundColor: Colors.deepPurple.shade100,
        ),
        backgroundColor: Colors.deepPurple.shade100,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
          children: [
            // DropDown for Translation Mode Select
            ButtonTheme(
              alignedDropdown: true,
              child: DropdownButtonFormField<LiveTranslationType>(
                value: _selectedItem,
                onChanged: onTranslationDropDownValueChange,
                decoration: const InputDecoration(
                  labelText: 'Select a Live Translation Method',
                  border: OutlineInputBorder(),
                ),
                borderRadius: BorderRadius.circular(20),
                items: liveTranslationMethods
                    .map<DropdownMenuItem<LiveTranslationType>>(
                        (LiveTranslationType value) =>
                            DropdownMenuItem<LiveTranslationType>(
                              value: value,
                              child: Row(
                                children: [
                                  Icon(dropDownTranslationIcon(value)),
                                  const SizedBox(width: 14),
                                  Text(dropDownTranslationName(value)),
                                ],
                              ),
                            ))
                    .toList(),
              ),
            ),

            // String From List
            Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text(
                  _selectedItem == LiveTranslationType.list
                      ? "✅ String can be added to List (Array) by inserting Whitespace!"
                      : "✅ Ignore Keys are added to list by adding Whitespace! (Pressing Space-bar)",
                  style: const TextStyle(fontWeight: FontWeight.w700),
                )),

            // Pre-defined TextField as Per List, Map or JSON
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextFormField(
                readOnly: isLoading,
                controller: textToTranslateController,
                onChanged: onInputTextChange,
                maxLines: 8,
                style: const TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  labelText: "Enter Text to Translate Here!".dev,
                  labelStyle: const TextStyle(fontSize: 22),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide: BorderSide(
                      color: Colors.purple.shade900,
                      width: 0.9,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white38,
                ),
              ),
            ),

            // Ignore Keys Control Per List, Map or JSON
            if (showIgnoreKeyInput)
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  readOnly: isLoading,
                  controller: ignoreKeysController,
                  onChanged: onIgnoreKeyInputTextChange,
                  style: const TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "Enter Ignore Keys Here!".dev,
                    labelStyle: const TextStyle(fontSize: 22),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: BorderSide(
                        color: Colors.purple.shade900,
                        width: 0.9,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white38,
                  ),
                ),
              ),

            // Translate Now Button
            if (!isLoading) ...[
              const SizedBox(height: 8),

              // Translation with List
              if (_selectedItem == LiveTranslationType.list)
                OurElevatedButton(
                  onPressed: listOnPress,
                  text: 'Get Translation with List!',
                ),

              // Translation with Map
              if (_selectedItem == LiveTranslationType.map)
                OurElevatedButton(
                  onPressed: mapOnPress,
                  text: 'Get Translation with Map!',
                ),

              // Translation with JSON
              if (_selectedItem == LiveTranslationType.json)
                OurElevatedButton(
                  onPressed: () async {
                    FocusManager.instance.primaryFocus?.unfocus();
                    if (textToTranslateController.text.isNotEmpty) {
                      setState(() {
                        translatedText = '';
                        isLoading = true;
                      });

                      final value =
                          await Devnagri.getTranslationsWithJSONAndIgnoreKeys(
                              jsonString: textToTranslateController.text,
                              waitForServerResult: true,
                              ignoreKeys: ignoreKeys,
                              fetchFromServerWhenNotAvailable: true);

                      setState(() {
                        translatedText = value.isNotEmpty ? value : '';
                        isLoading = false;
                      });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content:
                                Text("Try putting some text up there!".dev)),
                      );
                    }
                  },
                  text: 'Get Translation with JSON!',
                ),
            ],

            // Loader
            if (isLoading) ...[
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/images/cat_baking.gif",
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: AnimatedTextKit(
                  // repeatForever: true,
                  isRepeatingAnimation: true,
                  animatedTexts: [
                    ColorizeAnimatedText(
                      "Let Devnagri work its magic! Get ready for some linguistic wizardry!"
                          .dev,
                      colors: [
                        Colors.white,
                        Colors.blue.shade100,
                      ],
                      speed: const Duration(milliseconds: 80),
                      textAlign: TextAlign.center,
                      textStyle: const TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w800,
                          fontSize: 26),
                    )
                  ],
                ),
              )
            ],

            // Translated Text
            if (translatedText.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 15),
                // child: TweenAnimationBuilder(
                //   duration: const Duration(milliseconds: 500),
                //   tween: Tween<double>(begin: 200.0, end: 25.0),
                //   builder: (context, value, child) => Center(
                //       child: Text(translatedText,
                //           style: TextStyle(
                //               fontWeight: FontWeight.w700,
                //               fontSize: value as double))),
                // ),
                child: AnimatedTextKit(
                    repeatForever: false,
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TypewriterAnimatedText(translatedText,
                          textAlign: TextAlign.center,
                          cursor: '...',
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 24),
                          speed: const Duration(milliseconds: 20))
                    ]),
              ),
          ],
        ),
      ),
    );
  }

  Future<void> listOnPress() async {
    bool isSame = true;
    FocusManager.instance.primaryFocus?.unfocus();
    if (listStringFromTextField.isNotEmpty) {
      setState(() {
        translatedText = '';
        isLoading = true;
      });

      try {
        final value = await Devnagri.getTranslationsWithList(
          sourceTranslations: listStringFromTextField,
          fetchFromServerWhenNotAvailable: true,
        );

        isLoading = false;

        isSame = listStringFromTextField.length == value.length;
        logger.i("is Result & Source Same: $isSame");
        if (!isSame) {
          logger.i("isSame: $isSame calling again");
          await listOnPress();
        } else {
          logger.i("isSame: $isSame hiding loader");
          setState(() {
            isLoading = false;
            translatedText = value.isNotEmpty ? value.join('\n') : '';
          });
        }
      } catch (error, s) {
        setState(() => isLoading = false);
        logger.i("This is error: $s");
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("This is new Error! $error")),
          );
        }
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Try putting some text up there!".dev)),
      );
    }
  }

  Future<void> mapOnPress() async {
    FocusManager.instance.primaryFocus?.unfocus();
    if (textToTranslateController.text.isNotEmpty) {
      setState(() {
        translatedText = '';
        isLoading = true;
      });

      try {
        final value = await Devnagri.getTranslationsWithMapAndIgnoredKeys(
            sourceTranslations: Map<String, String>.from(
                jsonDecode(textToTranslateController.text)),
            ignoreKeys: ignoreKeys,
            waitForServerResult: false,
            fetchFromServerWhenNotAvailable: true);

        isLoading = false;

        // isSame = textToTranslateController.text == value.toString();
        // logger.i("isSame: $isSame");
        // if (!isSame) {
        //   logger.i("isSame: $isSame  calling again");
        //   await mapOnPress();
        // } else {
        //   logger.i("isSame: $isSame hiding loader");
        //   setState(() {
        //     isLoading = false;
        //     translatedText = value.isNotEmpty ? jsonEncode(value) : '';
        //   });
        // }

        setState(() {
          translatedText = jsonEncode(value);
          isLoading = false;
        });
      } catch (error, s) {
        setState(() => isLoading = false);
        debugPrint('$s');
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Oops! $error")),
          );
        }
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Try putting some text up there!".dev)),
      );
    }
  }

  bool compareStringLists(List<String> list1, List<String> list2) {
    // Check if both lists have the same length
    if (list1.length != list2.length) {
      return false;
    }

    // Check if all elements in both lists are the same
    for (int i = 0; i < list1.length; i++) {
      if (list1[i] != list2[i]) {
        return false; // If any element doesn't match, return false
      }
    }

    // If all elements are the same, return true
    return true;
  }
}

class OurElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const OurElevatedButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) => ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}

enum LiveTranslationType {
  list,
  map,
  json,
}
