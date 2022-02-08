import 'package:evenia/pagemanager.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);



  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState(){
    super.initState();
    _navigatetopagemanager();
  }

  //navigating from welcome screen to the pageManager
  void _navigatetopagemanager() async{
    await Future.delayed(const Duration(milliseconds: 1500), (){});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => const PageManager()));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Center(
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text("Ev",
                style: TextStyle(fontSize: 24,
                    color: Colors.green,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              SizedBox(width: 0,),
              Text("enia", style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.w700),),

            ],)

      ),


    );
  }


}






