import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages ({Key? key}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Chats'),),
      body: const Center(
        child: Text("USer Chats", style: TextStyle(fontSize: 40),),
      ),
    );
  }
}