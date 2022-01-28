import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            icon:const Icon(Icons.arrow_back, color: Colors.black,),
            onPressed: () {
              //navigate back to home
            },),
        centerTitle: true,
        title: const Text('Order Detail', style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          color: Colors.black,
        ),),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Colors.grey,
            height: 1.0,
          ),
        ),
      ),
   
      //all app widgets goes here
      body: Container(
       child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ClipRect(
                  // borderRadius: BorderRadius.circular(10),
                  child:Image.asset("assets/pangung.jpeg",
                    height: 200,
                    width: 350,
                    fit: BoxFit.cover,
                  )

              ),
              const SizedBox(height: 8,),
              const Align(
                alignment: Alignment.topLeft,
                child: Text("Panggung Semenjak Internet",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),),
              ),

              const SizedBox(height: 18,),
              Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child:  Container(
                      margin: const EdgeInsets.all(12),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 2, color: Colors.grey),
                      ),
                      child: const Icon(
                        Icons.notifications,
                        size: 32,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const Text("Wildan Wari",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 18,
                    color: Colors.black,

                  ),)

                ],
              )


            ],

          ),
        )

        
      ),

    );
  }
}
