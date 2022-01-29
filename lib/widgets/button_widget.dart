import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  //button properties
  final String text;
  final VoidCallback onClicked;


  const ButtonWidget({Key? key, required this.text, required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) => FlatButton(
    onPressed: onClicked,
    color: Colors.white10,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      side: const BorderSide(color: Colors.blueGrey)
    ),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Text(
      text,
      style: const TextStyle(color: Colors.black, fontSize: 17),
    ),
  );
}