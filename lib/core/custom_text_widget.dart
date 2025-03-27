import 'package:example/l10n/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(10),
        child:  Text(
          Dev.of(context).thirteen,
          // 'I\'m a String from Custom Text Widget and You Should not be Jealous of Me!',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 34, fontWeight: FontWeight.w900),
        ));
  }
}
