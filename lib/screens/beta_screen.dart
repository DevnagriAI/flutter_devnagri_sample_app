import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/custom_text_widget.dart';

class BetaScreen extends StatelessWidget {
  const BetaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        backgroundColor: Colors.deepOrangeAccent.shade100,
      ),
      backgroundColor: Colors.deepOrangeAccent.shade100,
      body: const Center(
        child: Padding(padding: EdgeInsets.all(30), child: CustomTextWidget()),
        // child: ElevatedButton(
        //   onPressed: () {
        //     printWidgetInfo(context);
        //   },
        //   child: const Text('Print Info'),
        // ),
      ),
      floatingActionButton: FloatingActionButton.large(
        child: Icon(
          CupertinoIcons.back,
          color: Colors.deepOrange.shade300,
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
