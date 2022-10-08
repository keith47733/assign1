import 'package:flutter/material.dart';

class myText extends StatelessWidget {
  final String message;
  const myText(this.message, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: const TextStyle(fontSize: 24),
      textAlign: TextAlign.center,
    );
  }
}
