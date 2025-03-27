import 'package:flutter/material.dart';

import '../../l10n/generated/l10n.dart';

class AnimalsScreen extends StatefulWidget {
  const AnimalsScreen({super.key});

  @override
  State<AnimalsScreen> createState() => _AnimalsScreenState();
}

class _AnimalsScreenState extends State<AnimalsScreen> {
  List<String> animals = [];

  @override
  void initState() => super.initState();

  @override
  void didChangeDependencies() {
    animals = [
      Dev.of(context).lion,
      Dev.of(context).elephant,
      Dev.of(context).tiger,
      Dev.of(context).zebra,
      Dev.of(context).bear,
      Dev.of(context).gorilla,
      Dev.of(context).chimpanzee,
      Dev.of(context).orangutan,
      Dev.of(context).rhinoceros,
      Dev.of(context).hippopotamus,
      Dev.of(context).giraffe,
      Dev.of(context).chimpanzee,
      Dev.of(context).kangaroo,
      Dev.of(context).koala,
      Dev.of(context).panda,
      Dev.of(context).wolf,
      Dev.of(context).fox,
      Dev.of(context).rhinoceros,
      Dev.of(context).deer,
      Dev.of(context).snake,
      Dev.of(context).crocodile,
      Dev.of(context).turtle,
      Dev.of(context).owl,
      Dev.of(context).eagle,
      Dev.of(context).parrot,
      Dev.of(context).penguin,
      Dev.of(context).dolphin,
      Dev.of(context).whale,
      Dev.of(context).shark,
      Dev.of(context).fish,
      Dev.of(context).butterfly,
    ];

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Dev.of(context).randomAnimals),
      ),
      body: ListView.builder(
        itemCount: animals.length,
        itemBuilder: (context, index) {
          final animal = animals[index];
          return ListTile(
            title: Text(
              animal,
              style: const TextStyle(fontSize: 20),
            ),
          );
        },
      ),
    );
  }
}
