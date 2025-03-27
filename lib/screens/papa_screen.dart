import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/custom_text_widget.dart';
import 'beta_screen.dart';

class PapaScreen extends StatelessWidget {
  const PapaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        backgroundColor: Colors.deepPurple.shade100,
      ),
      backgroundColor: Colors. deepPurple.shade100,
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: CustomTextWidget(),
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        child: Icon(
          CupertinoIcons.paperplane,
          color: Colors.deepPurple.shade300,
        ),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const BetaScreen(),
          ),
        ),
      ),
    );
  }
}
