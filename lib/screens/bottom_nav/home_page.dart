import 'package:devnagri_sdk/devnagri_sdk.dart';
import 'package:example/screens/live_translation_screen.dart';
import 'package:example/screens/papa_screen.dart';
import 'package:flutter/material.dart';

import '../../l10n/generated/l10n.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textStyle =
      const TextStyle(fontSize: 20, height: 1.2, color: Colors.black);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Dev.of(context).title,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              Dev.of(context).spicyYetSweet('haha'),
              textAlign: TextAlign.center,
              style: textStyle,
            ),
            Text(
              Dev.of(context).puppy,
              style: textStyle,
            ),
            Text(
              Dev.of(context).helloWorld,
              style: textStyle,
            ),
            Text(
              Dev.of(context).title,
              style: textStyle,
            ),
            Text(
              Dev.of(context).dogs(12),
              style: textStyle,
            ),
            // Text(
            //   Dev.of(context).nElephants(0, 2),
            //   style: textStyle,
            // ),
            // Text(
            //   "I am an mango actually.".dev,
            //   style: textStyle,
            // ),
            // Text(
            //   "Not really!".dev,
            //   style: textStyle,
            // ),
            // Text(
            //   "So bye it means!?".dev,
            //   style: textStyle,
            // ),
            // Text(
            //   "Welcome me!".dev,
            //   style: textStyle,
            // ),
            // Text(
            //   "Thanks for not coming".dev,
            //   style: textStyle,
            // ),
            // Text(
            //   "Just another text".dev,
            //   style: textStyle,
            // ),
            // Text(
            //   "I like to move it, move it!".dev,
            //   style: textStyle,
            // ),
            // Text(
            //   "Tasting first ice-cream".dev,
            //   style: textStyle,
            // ),
            // Text(
            //   "Tasting first ice".dev,
            //   style: textStyle,
            // ),

            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PapaScreen(),
                  )),
              child: Text(
                "Tasting third ice-cream".dev,
                style: textStyle,
              ),
            ),
            // Text(
            //   "Tasting second cream and ice".dev,
            //   style: textStyle,
            // ),
            Text(
              // Dev.of(context).bear
              "Singh is King".dev,
              style: textStyle,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Hero(
                tag: 'WayToLiveTranslation',
                child: OutlinedButton(
                    onPressed: () =>
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => const LiveTranslationScreen(),
                        )),
                    child: Text(
                            'Live Translation Here!'.dev,
                            style: textStyle,
                          )),
              ),
            ),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}

