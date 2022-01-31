import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  //button properties
  final String text;
  final VoidCallback onClicked;
  final Color btnColor;
  final ShapeBorder shapeBorder;



  const ButtonWidget({Key? key, required this.text, required this.onClicked,
    required this.btnColor, required this.shapeBorder, })
      : super(key: key);

  @override
  Widget build(BuildContext context) => FlatButton(
    onPressed: onClicked,
    shape: shapeBorder,
    color: btnColor,
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Text(
      text,
      style: const TextStyle(color: Colors.black, fontSize: 17),
    ),
  );
}