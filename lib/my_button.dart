import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  final String buttonText;
  MaterialStateProperty<Color> buttonColour;
  final Function selectHandler;
  myButton(this.buttonText, this.buttonColour, this.selectHandler, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: selectHandler,
      style: ButtonStyle(backgroundColor: buttonColour),
      child: Text(
        buttonText,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
