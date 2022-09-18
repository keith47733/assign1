import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final message;
  MyText(this.message);

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: const TextStyle(fontSize: 24),
      textAlign: TextAlign.center,
    );
  }
}
