import 'package:example/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({super.key});

  @override
  NumberScreenState createState() => NumberScreenState();
}

class NumberScreenState extends State<NumberScreen> {
  List<String> _numberWords = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _numberWords = [
      Dev.of(context).one,
      Dev.of(context).two,
      Dev.of(context).three,
      Dev.of(context).four,
      Dev.of(context).five,
      Dev.of(context).six,
      Dev.of(context).seven,
      Dev.of(context).eight,
      Dev.of(context).nine,
      Dev.of(context).ten,
      Dev.of(context).eleven,
      Dev.of(context).twelve,
      Dev.of(context).thirteen,
      Dev.of(context).fourteen,
      Dev.of(context).fifteen,
      Dev.of(context).sixteen,
      Dev.of(context).seventeen,
      Dev.of(context).eighteen,
      Dev.of(context).nineteen,
      Dev.of(context).twenty,
      Dev.of(context).twentyOne,
      Dev.of(context).twentyTwo,
      Dev.of(context).twentyThree,
      Dev.of(context).twentyFour,
      Dev.of(context).twentyFive,
      Dev.of(context).twentySix,
      Dev.of(context).twentySeven,
      Dev.of(context).twentyEight,
      Dev.of(context).twentyNine,
      Dev.of(context).thirty
    ];

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Dev.of(context).numbers),
      ),
      body: ListView.builder(
        itemCount: _numberWords.length,
        itemBuilder: (context, index) {
          final numberWord = _numberWords[index];
          final number = index + 1; // Numbers start from 1
          final firstLetter = numberWord[0].toUpperCase(); // Get first letter

          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.primaries[index %
                  Colors.primaries.length], // Cycle through primary colors
              child: Text(firstLetter),
            ),
            title: Text(
              numberWord,
              style: const TextStyle(fontSize: 20),
            ),
            subtitle: Text('$number'),
          );
        },
      ),
    );
  }
}
