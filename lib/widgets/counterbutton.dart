import 'package:flutter/material.dart';

class Counters extends StatefulWidget {
  const Counters({Key? key}) : super(key: key);

  @override
  _CountersState createState() => _CountersState();
}

class _CountersState extends State<Counters> {
  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(1.0),
    child:  Container(
      child: FlatButton(
          onPressed: () {},
          color: const Color(0xFFCFD8Dc),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
              side: const BorderSide(color: Colors.blueGrey)),
          padding:
          const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child:Icon(Icons.remove_circle, color: Colors.white,),
              ),
              Align(alignment: Alignment.center,
                child:Text(
                  "0",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Icon(Icons.add_circle, color: Colors.blue,),
              ),

            ],
          )

      ),
    )


  );
}