import 'package:flutter/material.dart';

import './my_button.dart';
import './my_text.dart';

class Assign1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Assign1State();
  }
}

class _Assign1State extends State<Assign1> {
  bool isButtonToggled = false;
  String appTitle = 'Assignment I';
  String notToggledText = 'The colour of the button is blue.';
  String isToggledText = 'The colour of the button is orange.';
  String myButtonText = 'Toggle Colour';
  final notToggledButtonColour = MaterialStateProperty.all(Colors.blue);
  final isToggledButtonColour = MaterialStateProperty.all(Colors.orange);
  final notToggledAppBarColour = Colors.blue;
  final isToggledAppBarColour = Colors.orange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isButtonToggled
          ? AppBar(
              title: Text(appTitle),
              backgroundColor: isToggledAppBarColour,
            )
          : AppBar(
              title: Text(appTitle),
              backgroundColor: notToggledAppBarColour,
            ),
      body: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isButtonToggled ? MyText(isToggledText) : MyText(notToggledText),
            isButtonToggled
                ? MyButton(myButtonText, isToggledButtonColour, pressButton)
                : MyButton(myButtonText, notToggledButtonColour, pressButton),
          ],
        ),
      ),
    );
  }

  void pressButton() {
    setState(() {
      isButtonToggled = !isButtonToggled;
    });
  }
}
