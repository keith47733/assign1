import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  MaterialStateProperty<Color> buttonColour;
  final Function selectHandler;
  MyButton(this.buttonText, this.buttonColour, this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: selectHandler,
        style: ButtonStyle(backgroundColor: buttonColour),
        child: Text(buttonText, style: const TextStyle(fontSize: 20)));
  }
}
